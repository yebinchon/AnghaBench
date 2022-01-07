
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct of_platform_driver {int dummy; } ;


 int of_unregister_driver (struct of_platform_driver*) ;

void ibmebus_unregister_driver(struct of_platform_driver *drv)
{
 of_unregister_driver(drv);
}
