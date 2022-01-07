
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cx_drv {int driver; } ;


 int driver_unregister (int *) ;

int cx_driver_unregister(struct cx_drv *cx_driver)
{
 driver_unregister(&cx_driver->driver);
 return 0;
}
