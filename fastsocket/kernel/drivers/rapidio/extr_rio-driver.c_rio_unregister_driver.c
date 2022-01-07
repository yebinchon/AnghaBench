
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rio_driver {int driver; } ;


 int driver_unregister (int *) ;

void rio_unregister_driver(struct rio_driver *rdrv)
{
 driver_unregister(&rdrv->driver);
}
