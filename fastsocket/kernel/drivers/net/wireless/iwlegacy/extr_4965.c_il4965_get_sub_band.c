
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct il_priv {TYPE_1__* calib_info; } ;
typedef size_t s32 ;
struct TYPE_4__ {scalar_t__ ch_from; scalar_t__ ch_to; } ;
struct TYPE_3__ {TYPE_2__* band_info; } ;


 size_t EEPROM_TX_POWER_BANDS ;

__attribute__((used)) static u32
il4965_get_sub_band(const struct il_priv *il, u32 channel)
{
 s32 b = -1;

 for (b = 0; b < EEPROM_TX_POWER_BANDS; b++) {
  if (il->calib_info->band_info[b].ch_from == 0)
   continue;

  if (channel >= il->calib_info->band_info[b].ch_from &&
      channel <= il->calib_info->band_info[b].ch_to)
   break;
 }

 return b;
}
