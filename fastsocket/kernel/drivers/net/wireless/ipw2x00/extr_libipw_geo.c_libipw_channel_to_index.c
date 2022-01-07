
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct TYPE_6__ {int bg_channels; int a_channels; TYPE_2__* a; TYPE_1__* bg; } ;
struct libipw_device {int freq_band; TYPE_3__ geo; } ;
struct TYPE_5__ {scalar_t__ channel; } ;
struct TYPE_4__ {scalar_t__ channel; } ;


 int LIBIPW_24GHZ_BAND ;
 int LIBIPW_52GHZ_BAND ;

int libipw_channel_to_index(struct libipw_device *ieee, u8 channel)
{
 int i;



 if (ieee->geo.bg_channels == 0 && ieee->geo.a_channels == 0)
  return -1;

 if (ieee->freq_band & LIBIPW_24GHZ_BAND)
  for (i = 0; i < ieee->geo.bg_channels; i++)
   if (ieee->geo.bg[i].channel == channel)
    return i;

 if (ieee->freq_band & LIBIPW_52GHZ_BAND)
  for (i = 0; i < ieee->geo.a_channels; i++)
   if (ieee->geo.a[i].channel == channel)
    return i;

 return -1;
}
