
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_28__ TYPE_9__ ;
typedef struct TYPE_27__ TYPE_8__ ;
typedef struct TYPE_26__ TYPE_7__ ;
typedef struct TYPE_25__ TYPE_6__ ;
typedef struct TYPE_24__ TYPE_5__ ;
typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;
typedef struct TYPE_19__ TYPE_12__ ;
typedef struct TYPE_18__ TYPE_11__ ;
typedef struct TYPE_17__ TYPE_10__ ;


typedef scalar_t__ u64 ;
struct TYPE_19__ {int kobj; int release; int * parent; } ;
struct TYPE_27__ {int min; } ;
struct TYPE_26__ {int min; } ;
struct TYPE_28__ {TYPE_8__ fabric; TYPE_7__ channel; } ;
struct TYPE_24__ {int min; } ;
struct TYPE_23__ {int min; } ;
struct TYPE_25__ {TYPE_5__ fabric; TYPE_4__ channel; } ;
struct TYPE_21__ {int min; } ;
struct TYPE_20__ {int min; } ;
struct TYPE_22__ {TYPE_2__ fabric; TYPE_1__ channel; } ;
struct TYPE_17__ {TYPE_9__ cmd; TYPE_6__ read; TYPE_3__ write; int lock; } ;
struct zfcp_unit {int status; int list; TYPE_12__ sysfs_device; TYPE_10__ latencies; scalar_t__ fcp_lun; struct zfcp_port* port; int scsi_work; int remove_wq; int refcount; } ;
struct zfcp_port {int unit_list_head; int sysfs_device; } ;
struct TYPE_18__ {int config_lock; } ;


 int EINVAL ;
 int ENOMEM ;
 struct zfcp_unit* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int INIT_WORK (int *,int ) ;
 int ZFCP_STATUS_COMMON_REMOVE ;
 int ZFCP_STATUS_COMMON_RUNNING ;
 int atomic_clear_mask (int ,int *) ;
 int atomic_set (int *,int ) ;
 int atomic_set_mask (int ,int *) ;
 int dev_set_drvdata (TYPE_12__*,struct zfcp_unit*) ;
 scalar_t__ dev_set_name (TYPE_12__*,char*,unsigned long long) ;
 scalar_t__ device_register (TYPE_12__*) ;
 int device_unregister (TYPE_12__*) ;
 int init_waitqueue_head (int *) ;
 int kfree (struct zfcp_unit*) ;
 struct zfcp_unit* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int put_device (TYPE_12__*) ;
 int read_lock_irq (int *) ;
 int read_unlock_irq (int *) ;
 int spin_lock_init (int *) ;
 scalar_t__ sysfs_create_group (int *,int *) ;
 int write_lock_irq (int *) ;
 int write_unlock_irq (int *) ;
 TYPE_11__ zfcp_data ;
 scalar_t__ zfcp_get_unit_by_lun (struct zfcp_port*,scalar_t__) ;
 int zfcp_port_get (struct zfcp_port*) ;
 int zfcp_scsi_scan_work ;
 int zfcp_sysfs_unit_attrs ;
 int zfcp_sysfs_unit_release ;
 int zfcp_unit_get (struct zfcp_unit*) ;

struct zfcp_unit *zfcp_unit_enqueue(struct zfcp_port *port, u64 fcp_lun)
{
 struct zfcp_unit *unit;

 read_lock_irq(&zfcp_data.config_lock);
 if (zfcp_get_unit_by_lun(port, fcp_lun)) {
  read_unlock_irq(&zfcp_data.config_lock);
  return ERR_PTR(-EINVAL);
 }
 read_unlock_irq(&zfcp_data.config_lock);

 unit = kzalloc(sizeof(struct zfcp_unit), GFP_KERNEL);
 if (!unit)
  return ERR_PTR(-ENOMEM);

 atomic_set(&unit->refcount, 0);
 init_waitqueue_head(&unit->remove_wq);
 INIT_WORK(&unit->scsi_work, zfcp_scsi_scan_work);

 unit->port = port;
 unit->fcp_lun = fcp_lun;

 if (dev_set_name(&unit->sysfs_device, "0x%016llx",
    (unsigned long long) fcp_lun)) {
  kfree(unit);
  return ERR_PTR(-ENOMEM);
 }
 unit->sysfs_device.parent = &port->sysfs_device;
 unit->sysfs_device.release = zfcp_sysfs_unit_release;
 dev_set_drvdata(&unit->sysfs_device, unit);


 atomic_set_mask(ZFCP_STATUS_COMMON_REMOVE, &unit->status);

 spin_lock_init(&unit->latencies.lock);
 unit->latencies.write.channel.min = 0xFFFFFFFF;
 unit->latencies.write.fabric.min = 0xFFFFFFFF;
 unit->latencies.read.channel.min = 0xFFFFFFFF;
 unit->latencies.read.fabric.min = 0xFFFFFFFF;
 unit->latencies.cmd.channel.min = 0xFFFFFFFF;
 unit->latencies.cmd.fabric.min = 0xFFFFFFFF;

 if (device_register(&unit->sysfs_device)) {
  put_device(&unit->sysfs_device);
  return ERR_PTR(-EINVAL);
 }

 if (sysfs_create_group(&unit->sysfs_device.kobj,
          &zfcp_sysfs_unit_attrs)) {
  device_unregister(&unit->sysfs_device);
  return ERR_PTR(-EINVAL);
 }

 zfcp_unit_get(unit);

 write_lock_irq(&zfcp_data.config_lock);
 list_add_tail(&unit->list, &port->unit_list_head);
 atomic_clear_mask(ZFCP_STATUS_COMMON_REMOVE, &unit->status);
 atomic_set_mask(ZFCP_STATUS_COMMON_RUNNING, &unit->status);

 write_unlock_irq(&zfcp_data.config_lock);

 zfcp_port_get(port);

 return unit;
}
