
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtd_chip_driver {int list; } ;


 int chip_drvs_lock ;
 int list_del (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void unregister_mtd_chip_driver(struct mtd_chip_driver *drv)
{
 spin_lock(&chip_drvs_lock);
 list_del(&drv->list);
 spin_unlock(&chip_drvs_lock);
}
