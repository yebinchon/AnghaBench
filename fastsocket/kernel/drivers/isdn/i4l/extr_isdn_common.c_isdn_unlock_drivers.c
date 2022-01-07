
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * drv; } ;


 int ISDN_MAX_DRIVERS ;
 TYPE_1__* dev ;
 int isdn_unlock_driver (int ) ;

void
isdn_unlock_drivers(void)
{
 int i;

 for (i = 0; i < ISDN_MAX_DRIVERS; i++) {
  if (!dev->drv[i])
   continue;
  isdn_unlock_driver(dev->drv[i]);
 }
}
