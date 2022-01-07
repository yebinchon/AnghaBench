
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int ulong ;
struct TYPE_6__ {int* usage; int* drvmap; int* chanmap; TYPE_2__** drv; } ;
struct TYPE_5__ {int flags; TYPE_1__* interface; } ;
struct TYPE_4__ {int features; } ;


 int DRV_FLAG_RUNNING ;
 int ISDN_FEATURE_L2_TRANS ;
 int ISDN_FEATURE_L2_V11019 ;
 int ISDN_FEATURE_L2_V11038 ;
 int ISDN_FEATURE_L2_V11096 ;
 int ISDN_MAX_CHANNELS ;
 int ISDN_USAGE_DISABLED ;
 int ISDN_USAGE_EXCLUSIVE ;
 scalar_t__ USG_NONE (int) ;
 TYPE_3__* dev ;
 int isdn_info_update () ;
 int isdn_map_eaz2msn (char*,int) ;
 int strcmp (int ,char*) ;

int
isdn_get_free_channel(int usage, int l2_proto, int l3_proto, int pre_dev
        ,int pre_chan, char *msn)
{
 int i;
 ulong features;
 ulong vfeatures;

 features = ((1 << l2_proto) | (0x10000 << l3_proto));
 vfeatures = (((1 << l2_proto) | (0x10000 << l3_proto)) &
       ~(ISDN_FEATURE_L2_V11096|ISDN_FEATURE_L2_V11019|ISDN_FEATURE_L2_V11038));




 for (i = 0; i < ISDN_MAX_CHANNELS; i++)
  if (USG_NONE(dev->usage[i]) &&
      (dev->drvmap[i] != -1)) {
   int d = dev->drvmap[i];
   if ((dev->usage[i] & ISDN_USAGE_EXCLUSIVE) &&
   ((pre_dev != d) || (pre_chan != dev->chanmap[i])))
    continue;
   if (!strcmp(isdn_map_eaz2msn(msn, d), "-"))
    continue;
   if (dev->usage[i] & ISDN_USAGE_DISABLED)
           continue;
   if (dev->drv[d]->flags & DRV_FLAG_RUNNING) {
    if (((dev->drv[d]->interface->features & features) == features) ||
        (((dev->drv[d]->interface->features & vfeatures) == vfeatures) &&
         (dev->drv[d]->interface->features & ISDN_FEATURE_L2_TRANS))) {
     if ((pre_dev < 0) || (pre_chan < 0)) {
      dev->usage[i] &= ISDN_USAGE_EXCLUSIVE;
      dev->usage[i] |= usage;
      isdn_info_update();
      return i;
     } else {
      if ((pre_dev == d) && (pre_chan == dev->chanmap[i])) {
       dev->usage[i] &= ISDN_USAGE_EXCLUSIVE;
       dev->usage[i] |= usage;
       isdn_info_update();
       return i;
      }
     }
    }
   }
  }
 return -1;
}
