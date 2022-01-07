
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int kobj; } ;
struct zfcp_port {TYPE_2__ sysfs_device; int adapter; int refcount; int remove_wq; int test_link_work; int rport_work; int gid_pn_work; int list; } ;
struct TYPE_3__ {int config_lock; } ;


 scalar_t__ atomic_read (int *) ;
 scalar_t__ cancel_work_sync (int *) ;
 int device_unregister (TYPE_2__*) ;
 int list_del (int *) ;
 int sysfs_remove_group (int *,int *) ;
 int wait_event (int ,int) ;
 int write_lock_irq (int *) ;
 int write_unlock_irq (int *) ;
 int zfcp_adapter_put (int ) ;
 TYPE_1__ zfcp_data ;
 int zfcp_port_put (struct zfcp_port*) ;
 int zfcp_sysfs_port_attrs ;

void zfcp_port_dequeue(struct zfcp_port *port)
{
 write_lock_irq(&zfcp_data.config_lock);
 list_del(&port->list);
 write_unlock_irq(&zfcp_data.config_lock);
 if (cancel_work_sync(&port->gid_pn_work))
  zfcp_port_put(port);
 if (cancel_work_sync(&port->rport_work))
  zfcp_port_put(port);
 if (cancel_work_sync(&port->test_link_work))
  zfcp_port_put(port);
 wait_event(port->remove_wq, atomic_read(&port->refcount) == 0);
 zfcp_adapter_put(port->adapter);
 sysfs_remove_group(&port->sysfs_device.kobj, &zfcp_sysfs_port_attrs);
 device_unregister(&port->sysfs_device);
}
