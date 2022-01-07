
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ccw_driver {int driver; } ;


 int driver_unregister (int *) ;

void ccw_driver_unregister(struct ccw_driver *cdriver)
{
 driver_unregister(&cdriver->driver);
}
