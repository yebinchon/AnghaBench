
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct il_priv {TYPE_1__* cfg; } ;
struct il_eeprom_channel {int dummy; } ;
struct TYPE_2__ {int * regulatory_bands; } ;


 int ARRAY_SIZE (int *) ;
 int BUG () ;
 int * il_eeprom_band_1 ;
 int * il_eeprom_band_2 ;
 int * il_eeprom_band_3 ;
 int * il_eeprom_band_4 ;
 int * il_eeprom_band_5 ;
 int * il_eeprom_band_6 ;
 int * il_eeprom_band_7 ;
 scalar_t__ il_eeprom_query_addr (struct il_priv const*,int ) ;

__attribute__((used)) static void
il_init_band_reference(const struct il_priv *il, int eep_band,
         int *eeprom_ch_count,
         const struct il_eeprom_channel **eeprom_ch_info,
         const u8 **eeprom_ch_idx)
{
 u32 offset = il->cfg->regulatory_bands[eep_band - 1];

 switch (eep_band) {
 case 1:
  *eeprom_ch_count = ARRAY_SIZE(il_eeprom_band_1);
  *eeprom_ch_info =
      (struct il_eeprom_channel *)il_eeprom_query_addr(il,
             offset);
  *eeprom_ch_idx = il_eeprom_band_1;
  break;
 case 2:
  *eeprom_ch_count = ARRAY_SIZE(il_eeprom_band_2);
  *eeprom_ch_info =
      (struct il_eeprom_channel *)il_eeprom_query_addr(il,
             offset);
  *eeprom_ch_idx = il_eeprom_band_2;
  break;
 case 3:
  *eeprom_ch_count = ARRAY_SIZE(il_eeprom_band_3);
  *eeprom_ch_info =
      (struct il_eeprom_channel *)il_eeprom_query_addr(il,
             offset);
  *eeprom_ch_idx = il_eeprom_band_3;
  break;
 case 4:
  *eeprom_ch_count = ARRAY_SIZE(il_eeprom_band_4);
  *eeprom_ch_info =
      (struct il_eeprom_channel *)il_eeprom_query_addr(il,
             offset);
  *eeprom_ch_idx = il_eeprom_band_4;
  break;
 case 5:
  *eeprom_ch_count = ARRAY_SIZE(il_eeprom_band_5);
  *eeprom_ch_info =
      (struct il_eeprom_channel *)il_eeprom_query_addr(il,
             offset);
  *eeprom_ch_idx = il_eeprom_band_5;
  break;
 case 6:
  *eeprom_ch_count = ARRAY_SIZE(il_eeprom_band_6);
  *eeprom_ch_info =
      (struct il_eeprom_channel *)il_eeprom_query_addr(il,
             offset);
  *eeprom_ch_idx = il_eeprom_band_6;
  break;
 case 7:
  *eeprom_ch_count = ARRAY_SIZE(il_eeprom_band_7);
  *eeprom_ch_info =
      (struct il_eeprom_channel *)il_eeprom_query_addr(il,
             offset);
  *eeprom_ch_idx = il_eeprom_band_7;
  break;
 default:
  BUG();
 }
}
