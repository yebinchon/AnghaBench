
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int kobj; } ;
struct zfcp_unit {TYPE_2__ sysfs_device; int port; int list; int refcount; int remove_wq; } ;
struct TYPE_3__ {int config_lock; } ;


 scalar_t__ atomic_read (int *) ;
 int device_unregister (TYPE_2__*) ;
 int list_del (int *) ;
 int sysfs_remove_group (int *,int *) ;
 int wait_event (int ,int) ;
 int write_lock_irq (int *) ;
 int write_unlock_irq (int *) ;
 TYPE_1__ zfcp_data ;
 int zfcp_port_put (int ) ;
 int zfcp_sysfs_unit_attrs ;

void zfcp_unit_dequeue(struct zfcp_unit *unit)
{
 wait_event(unit->remove_wq, atomic_read(&unit->refcount) == 0);
 write_lock_irq(&zfcp_data.config_lock);
 list_del(&unit->list);
 write_unlock_irq(&zfcp_data.config_lock);
 zfcp_port_put(unit->port);
 sysfs_remove_group(&unit->sysfs_device.kobj, &zfcp_sysfs_unit_attrs);
 device_unregister(&unit->sysfs_device);
}
