
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
struct zfcp_unit {TYPE_2__* port; int list; int status; int refcount; } ;
struct zfcp_port {int starget_id; TYPE_1__* adapter; int status; } ;
struct scsi_lun {int dummy; } ;
struct scsi_device {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_6__ {int config_mutex; int config_lock; } ;
struct TYPE_5__ {int adapter; } ;
struct TYPE_4__ {int scsi_host; } ;


 int EBUSY ;
 int EINVAL ;
 int ENXIO ;
 int LIST_HEAD (int ) ;
 int ZFCP_STATUS_COMMON_REMOVE ;
 int atomic_read (int *) ;
 int atomic_set_mask (int,int *) ;
 struct zfcp_port* dev_get_drvdata (struct device*) ;
 int list_move (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int read_lock_irq (int *) ;
 int read_unlock_irq (int *) ;
 struct scsi_device* scsi_device_lookup (int ,int ,int ,int ) ;
 int scsi_device_put (struct scsi_device*) ;
 int scsi_remove_device (struct scsi_device*) ;
 int scsilun_to_int (struct scsi_lun*) ;
 scalar_t__ strict_strtoull (char const*,int ,unsigned long long*) ;
 int unit_remove_lh ;
 int write_lock_irq (int *) ;
 int write_unlock_irq (int *) ;
 TYPE_3__ zfcp_data ;
 int zfcp_erp_unit_shutdown (struct zfcp_unit*,int ,char*,int *) ;
 int zfcp_erp_wait (int ) ;
 struct zfcp_unit* zfcp_get_unit_by_lun (struct zfcp_port*,int ) ;
 int zfcp_unit_dequeue (struct zfcp_unit*) ;
 int zfcp_unit_get (struct zfcp_unit*) ;
 int zfcp_unit_put (struct zfcp_unit*) ;

__attribute__((used)) static ssize_t zfcp_sysfs_unit_remove_store(struct device *dev,
         struct device_attribute *attr,
         const char *buf, size_t count)
{
 struct zfcp_port *port = dev_get_drvdata(dev);
 struct zfcp_unit *unit;
 u64 fcp_lun;
 LIST_HEAD(unit_remove_lh);
 struct scsi_device *sdev;

 mutex_lock(&zfcp_data.config_mutex);
 if (atomic_read(&port->status) & ZFCP_STATUS_COMMON_REMOVE) {
  mutex_unlock(&zfcp_data.config_mutex);
  return -EBUSY;
 }

 if (strict_strtoull(buf, 0, (unsigned long long *) &fcp_lun)) {
  mutex_unlock(&zfcp_data.config_mutex);
  return -EINVAL;
 }

 read_lock_irq(&zfcp_data.config_lock);
 unit = zfcp_get_unit_by_lun(port, fcp_lun);
 read_unlock_irq(&zfcp_data.config_lock);
 if (!unit) {
  mutex_unlock(&zfcp_data.config_mutex);
  return -ENXIO;
 }
 zfcp_unit_get(unit);
 mutex_unlock(&zfcp_data.config_mutex);

 sdev = scsi_device_lookup(port->adapter->scsi_host, 0,
      port->starget_id,
      scsilun_to_int((struct scsi_lun *)&fcp_lun));
 if (sdev) {
  scsi_remove_device(sdev);
  scsi_device_put(sdev);
 }

 mutex_lock(&zfcp_data.config_mutex);
 zfcp_unit_put(unit);
 if (atomic_read(&unit->refcount)) {
  mutex_unlock(&zfcp_data.config_mutex);
  return -ENXIO;
 }

 write_lock_irq(&zfcp_data.config_lock);
 atomic_set_mask(ZFCP_STATUS_COMMON_REMOVE, &unit->status);
 list_move(&unit->list, &unit_remove_lh);
 write_unlock_irq(&zfcp_data.config_lock);
 mutex_unlock(&zfcp_data.config_mutex);

 zfcp_erp_unit_shutdown(unit, 0, "syurs_1", ((void*)0));
 zfcp_erp_wait(unit->port->adapter);
 zfcp_unit_dequeue(unit);

 return (ssize_t)count;
}
