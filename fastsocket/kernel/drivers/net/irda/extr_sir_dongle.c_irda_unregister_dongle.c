
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dongle_driver {int dongle_list; } ;


 int dongle_list_lock ;
 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int irda_unregister_dongle(struct dongle_driver *drv)
{
 mutex_lock(&dongle_list_lock);
 list_del(&drv->dongle_list);
 mutex_unlock(&dongle_list_lock);
 return 0;
}
