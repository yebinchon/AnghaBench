
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int platform_driver_unregister (int *) ;
 int wm831x_status_driver ;

__attribute__((used)) static void wm831x_status_exit(void)
{
 platform_driver_unregister(&wm831x_status_driver);
}
