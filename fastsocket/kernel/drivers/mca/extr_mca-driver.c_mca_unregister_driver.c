
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mca_driver {int driver; } ;


 scalar_t__ MCA_bus ;
 int driver_unregister (int *) ;

void mca_unregister_driver(struct mca_driver *mca_drv)
{
 if (MCA_bus)
  driver_unregister(&mca_drv->driver);
}
