
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct iwl_eeprom_channel {int dummy; } ;
struct iwl_cfg {TYPE_1__* eeprom_params; } ;
struct TYPE_2__ {int* regulatory_bands; } ;


 int ARRAY_SIZE (int *) ;
 int INDIRECT_ADDRESS ;
 int INDIRECT_REGULATORY ;
 int WARN_ON (int) ;
 int * iwl_eeprom_band_1 ;
 int * iwl_eeprom_band_2 ;
 int * iwl_eeprom_band_3 ;
 int * iwl_eeprom_band_4 ;
 int * iwl_eeprom_band_5 ;
 int * iwl_eeprom_band_6 ;
 int * iwl_eeprom_band_7 ;
 scalar_t__ iwl_eeprom_query_addr (int const*,size_t,int) ;

__attribute__((used)) static void iwl_init_band_reference(const struct iwl_cfg *cfg,
        const u8 *eeprom, size_t eeprom_size,
        int eeprom_band, int *eeprom_ch_count,
        const struct iwl_eeprom_channel **ch_info,
        const u8 **eeprom_ch_array)
{
 u32 offset = cfg->eeprom_params->regulatory_bands[eeprom_band - 1];

 offset |= INDIRECT_ADDRESS | INDIRECT_REGULATORY;

 *ch_info = (void *)iwl_eeprom_query_addr(eeprom, eeprom_size, offset);

 switch (eeprom_band) {
 case 1:
  *eeprom_ch_count = ARRAY_SIZE(iwl_eeprom_band_1);
  *eeprom_ch_array = iwl_eeprom_band_1;
  break;
 case 2:
  *eeprom_ch_count = ARRAY_SIZE(iwl_eeprom_band_2);
  *eeprom_ch_array = iwl_eeprom_band_2;
  break;
 case 3:
  *eeprom_ch_count = ARRAY_SIZE(iwl_eeprom_band_3);
  *eeprom_ch_array = iwl_eeprom_band_3;
  break;
 case 4:
  *eeprom_ch_count = ARRAY_SIZE(iwl_eeprom_band_4);
  *eeprom_ch_array = iwl_eeprom_band_4;
  break;
 case 5:
  *eeprom_ch_count = ARRAY_SIZE(iwl_eeprom_band_5);
  *eeprom_ch_array = iwl_eeprom_band_5;
  break;
 case 6:
  *eeprom_ch_count = ARRAY_SIZE(iwl_eeprom_band_6);
  *eeprom_ch_array = iwl_eeprom_band_6;
  break;
 case 7:
  *eeprom_ch_count = ARRAY_SIZE(iwl_eeprom_band_7);
  *eeprom_ch_array = iwl_eeprom_band_7;
  break;
 default:
  *eeprom_ch_count = 0;
  *eeprom_ch_array = ((void*)0);
  WARN_ON(1);
 }
}
