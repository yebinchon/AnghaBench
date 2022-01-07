
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint ;
struct TYPE_3__ {size_t chan; int freq; } ;


 size_t ARRAY_SIZE (TYPE_1__*) ;
 TYPE_1__* chan_info_all ;

int wlc_phy_channel2freq(uint channel)
{
 uint i;

 for (i = 0; i < ARRAY_SIZE(chan_info_all); i++)
  if (chan_info_all[i].chan == channel)
   return chan_info_all[i].freq;
 return 0;
}
