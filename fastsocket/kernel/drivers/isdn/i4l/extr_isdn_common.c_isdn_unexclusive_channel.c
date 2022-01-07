
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int* drvmap; int* chanmap; int * usage; } ;


 int ISDN_MAX_CHANNELS ;
 int ISDN_USAGE_EXCLUSIVE ;
 TYPE_1__* dev ;
 int isdn_info_update () ;

void
isdn_unexclusive_channel(int di, int ch)
{
 int i;

 for (i = 0; i < ISDN_MAX_CHANNELS; i++)
  if ((dev->drvmap[i] == di) &&
      (dev->chanmap[i] == ch)) {
   dev->usage[i] &= ~ISDN_USAGE_EXCLUSIVE;
   isdn_info_update();
   return;
  }
}
