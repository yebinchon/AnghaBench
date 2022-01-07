
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct zfcp_port {int list; int status; int refcount; } ;
struct zfcp_adapter {int status; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int config_mutex; int config_lock; } ;


 int EBUSY ;
 int EINVAL ;
 int ENXIO ;
 int LIST_HEAD (int ) ;
 int ZFCP_STATUS_COMMON_REMOVE ;
 int atomic_read (int *) ;
 int atomic_set_mask (int,int *) ;
 struct zfcp_adapter* dev_get_drvdata (struct device*) ;
 int list_move (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int port_remove_lh ;
 scalar_t__ strict_strtoull (char const*,int ,unsigned long long*) ;
 int write_lock_irq (int *) ;
 int write_unlock_irq (int *) ;
 TYPE_1__ zfcp_data ;
 int zfcp_erp_port_shutdown (struct zfcp_port*,int ,char*,int *) ;
 int zfcp_erp_wait (struct zfcp_adapter*) ;
 struct zfcp_port* zfcp_get_port_by_wwpn (struct zfcp_adapter*,int ) ;
 int zfcp_port_dequeue (struct zfcp_port*) ;
 int zfcp_port_get (struct zfcp_port*) ;
 int zfcp_port_put (struct zfcp_port*) ;

__attribute__((used)) static ssize_t zfcp_sysfs_port_remove_store(struct device *dev,
         struct device_attribute *attr,
         const char *buf, size_t count)
{
 struct zfcp_adapter *adapter = dev_get_drvdata(dev);
 struct zfcp_port *port;
 u64 wwpn;
 int retval = 0;
 LIST_HEAD(port_remove_lh);

 mutex_lock(&zfcp_data.config_mutex);
 if (atomic_read(&adapter->status) & ZFCP_STATUS_COMMON_REMOVE) {
  retval = -EBUSY;
  goto out;
 }

 if (strict_strtoull(buf, 0, (unsigned long long *) &wwpn)) {
  retval = -EINVAL;
  goto out;
 }

 write_lock_irq(&zfcp_data.config_lock);
 port = zfcp_get_port_by_wwpn(adapter, wwpn);
 if (port && (atomic_read(&port->refcount) == 0)) {
  zfcp_port_get(port);
  atomic_set_mask(ZFCP_STATUS_COMMON_REMOVE, &port->status);
  list_move(&port->list, &port_remove_lh);
 } else
  port = ((void*)0);
 write_unlock_irq(&zfcp_data.config_lock);

 if (!port) {
  retval = -ENXIO;
  goto out;
 }

 zfcp_erp_port_shutdown(port, 0, "syprs_1", ((void*)0));
 zfcp_erp_wait(adapter);
 zfcp_port_put(port);
 zfcp_port_dequeue(port);
 out:
 mutex_unlock(&zfcp_data.config_mutex);
 return retval ? retval : (ssize_t) count;
}
