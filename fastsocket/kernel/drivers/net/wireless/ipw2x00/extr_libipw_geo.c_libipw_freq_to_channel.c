
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_6__ {int bg_channels; int a_channels; TYPE_2__* a; TYPE_1__* bg; } ;
struct libipw_device {int freq_band; TYPE_3__ geo; } ;
struct TYPE_5__ {int freq; int channel; } ;
struct TYPE_4__ {int freq; int channel; } ;


 int LIBIPW_24GHZ_BAND ;
 int LIBIPW_52GHZ_BAND ;

u8 libipw_freq_to_channel(struct libipw_device * ieee, u32 freq)
{
 int i;



 if (ieee->geo.bg_channels == 0 && ieee->geo.a_channels == 0)
  return 0;

 freq /= 100000;

 if (ieee->freq_band & LIBIPW_24GHZ_BAND)
  for (i = 0; i < ieee->geo.bg_channels; i++)
   if (ieee->geo.bg[i].freq == freq)
    return ieee->geo.bg[i].channel;

 if (ieee->freq_band & LIBIPW_52GHZ_BAND)
  for (i = 0; i < ieee->geo.a_channels; i++)
   if (ieee->geo.a[i].freq == freq)
    return ieee->geo.a[i].channel;

 return 0;
}
