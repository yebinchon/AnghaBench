
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int driver; } ;


 int __adjust_timing ;
 int driver_for_each_device (int *,int *,int *,int ) ;
 TYPE_1__ omap2_onenand_driver ;

int omap2_onenand_rephase(void)
{
 return driver_for_each_device(&omap2_onenand_driver.driver, ((void*)0),
          ((void*)0), __adjust_timing);
}
