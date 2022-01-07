
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__** drv; int global_features; } ;
struct TYPE_5__ {TYPE_1__* interface; } ;
struct TYPE_4__ {int features; } ;


 int ISDN_MAX_DRIVERS ;
 TYPE_3__* dev ;

__attribute__((used)) static void
set_global_features(void)
{
 int drvidx;

 dev->global_features = 0;
 for (drvidx = 0; drvidx < ISDN_MAX_DRIVERS; drvidx++) {
  if (!dev->drv[drvidx])
   continue;
  if (dev->drv[drvidx]->interface)
   dev->global_features |= dev->drv[drvidx]->interface->features;
 }
}
