
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ u64 ;
typedef int u32 ;
struct TYPE_10__ {int kobj; int release; int * parent; } ;
struct zfcp_port {int d_id; int status; int list; TYPE_3__ sysfs_device; int refcount; int rport_task; scalar_t__ wwpn; struct zfcp_adapter* adapter; int rport_work; int test_link_work; int gid_pn_work; int unit_list_head; int remove_wq; } ;
struct zfcp_adapter {int port_list_head; TYPE_1__* ccw_device; } ;
struct TYPE_9__ {int config_lock; } ;
struct TYPE_8__ {int dev; } ;


 int EINVAL ;
 int ENOMEM ;
 struct zfcp_port* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int INIT_WORK (int *,int ) ;
 int RPORT_NONE ;
 int ZFCP_STATUS_COMMON_REMOVE ;
 int ZFCP_STATUS_COMMON_RUNNING ;
 int atomic_clear_mask (int,int *) ;
 int atomic_set (int *,int ) ;
 int atomic_set_mask (int,int *) ;
 int dev_set_drvdata (TYPE_3__*,struct zfcp_port*) ;
 scalar_t__ dev_set_name (TYPE_3__*,char*,unsigned long long) ;
 scalar_t__ device_register (TYPE_3__*) ;
 int device_unregister (TYPE_3__*) ;
 int init_waitqueue_head (int *) ;
 int kfree (struct zfcp_port*) ;
 struct zfcp_port* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int put_device (TYPE_3__*) ;
 int read_lock_irq (int *) ;
 int read_unlock_irq (int *) ;
 scalar_t__ sysfs_create_group (int *,int *) ;
 int write_lock_irq (int *) ;
 int write_unlock_irq (int *) ;
 int zfcp_adapter_get (struct zfcp_adapter*) ;
 TYPE_2__ zfcp_data ;
 int zfcp_fc_link_test_work ;
 int zfcp_fc_port_did_lookup ;
 scalar_t__ zfcp_get_port_by_wwpn (struct zfcp_adapter*,scalar_t__) ;
 int zfcp_port_get (struct zfcp_port*) ;
 int zfcp_scsi_rport_work ;
 int zfcp_sysfs_port_attrs ;
 int zfcp_sysfs_port_release ;

struct zfcp_port *zfcp_port_enqueue(struct zfcp_adapter *adapter, u64 wwpn,
         u32 status, u32 d_id)
{
 struct zfcp_port *port;

 read_lock_irq(&zfcp_data.config_lock);
 if (zfcp_get_port_by_wwpn(adapter, wwpn)) {
  read_unlock_irq(&zfcp_data.config_lock);
  return ERR_PTR(-EINVAL);
 }
 read_unlock_irq(&zfcp_data.config_lock);

 port = kzalloc(sizeof(struct zfcp_port), GFP_KERNEL);
 if (!port)
  return ERR_PTR(-ENOMEM);

 init_waitqueue_head(&port->remove_wq);
 INIT_LIST_HEAD(&port->unit_list_head);
 INIT_WORK(&port->gid_pn_work, zfcp_fc_port_did_lookup);
 INIT_WORK(&port->test_link_work, zfcp_fc_link_test_work);
 INIT_WORK(&port->rport_work, zfcp_scsi_rport_work);

 port->adapter = adapter;
 port->d_id = d_id;
 port->wwpn = wwpn;
 port->rport_task = RPORT_NONE;


 atomic_set_mask(status | ZFCP_STATUS_COMMON_REMOVE, &port->status);
 atomic_set(&port->refcount, 0);

 if (dev_set_name(&port->sysfs_device, "0x%016llx",
    (unsigned long long)wwpn)) {
  kfree(port);
  return ERR_PTR(-ENOMEM);
 }
 port->sysfs_device.parent = &adapter->ccw_device->dev;
 port->sysfs_device.release = zfcp_sysfs_port_release;
 dev_set_drvdata(&port->sysfs_device, port);

 if (device_register(&port->sysfs_device)) {
  put_device(&port->sysfs_device);
  return ERR_PTR(-EINVAL);
 }

 if (sysfs_create_group(&port->sysfs_device.kobj,
          &zfcp_sysfs_port_attrs)) {
  device_unregister(&port->sysfs_device);
  return ERR_PTR(-EINVAL);
 }

 zfcp_port_get(port);

 write_lock_irq(&zfcp_data.config_lock);
 list_add_tail(&port->list, &adapter->port_list_head);
 atomic_clear_mask(ZFCP_STATUS_COMMON_REMOVE, &port->status);
 atomic_set_mask(ZFCP_STATUS_COMMON_RUNNING, &port->status);

 write_unlock_irq(&zfcp_data.config_lock);

 zfcp_adapter_get(adapter);
 return port;
}
