
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct zfcp_unit {TYPE_1__* port; } ;
struct zfcp_port {int status; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_4__ {int config_mutex; } ;
struct TYPE_3__ {int adapter; } ;


 int EBUSY ;
 int EINVAL ;
 scalar_t__ IS_ERR (struct zfcp_unit*) ;
 int ZFCP_STATUS_COMMON_REMOVE ;
 int atomic_read (int *) ;
 struct zfcp_port* dev_get_drvdata (struct device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ strict_strtoull (char const*,int ,unsigned long long*) ;
 TYPE_2__ zfcp_data ;
 int zfcp_erp_unit_reopen (struct zfcp_unit*,int ,char*,int *) ;
 int zfcp_erp_wait (int ) ;
 int zfcp_scsi_scan (struct zfcp_unit*) ;
 struct zfcp_unit* zfcp_unit_enqueue (struct zfcp_port*,int ) ;
 int zfcp_unit_put (struct zfcp_unit*) ;

__attribute__((used)) static ssize_t zfcp_sysfs_unit_add_store(struct device *dev,
      struct device_attribute *attr,
      const char *buf, size_t count)
{
 struct zfcp_port *port = dev_get_drvdata(dev);
 struct zfcp_unit *unit;
 u64 fcp_lun;

 mutex_lock(&zfcp_data.config_mutex);
 if (atomic_read(&port->status) & ZFCP_STATUS_COMMON_REMOVE) {
  mutex_unlock(&zfcp_data.config_mutex);
  return -EBUSY;
 }

 if (strict_strtoull(buf, 0, (unsigned long long *) &fcp_lun)) {
  mutex_unlock(&zfcp_data.config_mutex);
  return -EINVAL;
 }

 unit = zfcp_unit_enqueue(port, fcp_lun);
 mutex_unlock(&zfcp_data.config_mutex);
 if (IS_ERR(unit))
  return -EINVAL;

 zfcp_erp_unit_reopen(unit, 0, "syuas_1", ((void*)0));
 zfcp_erp_wait(unit->port->adapter);
 zfcp_scsi_scan(unit);
 zfcp_unit_put(unit);

 return (ssize_t) count;
}
