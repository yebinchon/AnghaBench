
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parisc_driver {int drv; } ;


 int driver_unregister (int *) ;

int unregister_parisc_driver(struct parisc_driver *driver)
{
 driver_unregister(&driver->drv);
 return 0;
}
