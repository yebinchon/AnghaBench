
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int* chanmap; int* drvmap; } ;


 int ISDN_MAX_CHANNELS ;
 TYPE_1__* dev ;

int
isdn_dc2minor(int di, int ch)
{
 int i;
 for (i = 0; i < ISDN_MAX_CHANNELS; i++)
  if (dev->chanmap[i] == ch && dev->drvmap[i] == di)
   return i;
 return -1;
}
