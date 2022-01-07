
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct il_priv {scalar_t__ eeprom; } ;
struct il3945_eeprom {int antenna_switch_type; } ;
typedef int __le32 ;
struct TYPE_2__ {int antenna; } ;





 int IL_ERR (char*,int) ;
 int RXON_FLG_ANT_A_MSK ;
 int RXON_FLG_ANT_B_MSK ;
 int RXON_FLG_DIS_DIV_MSK ;
 TYPE_1__ il3945_mod_params ;

__le32
il3945_get_antenna_flags(const struct il_priv *il)
{
 struct il3945_eeprom *eeprom = (struct il3945_eeprom *)il->eeprom;

 switch (il3945_mod_params.antenna) {
 case 129:
  return 0;

 case 128:
  if (eeprom->antenna_switch_type)
   return RXON_FLG_DIS_DIV_MSK | RXON_FLG_ANT_B_MSK;
  return RXON_FLG_DIS_DIV_MSK | RXON_FLG_ANT_A_MSK;

 case 130:
  if (eeprom->antenna_switch_type)
   return RXON_FLG_DIS_DIV_MSK | RXON_FLG_ANT_A_MSK;
  return RXON_FLG_DIS_DIV_MSK | RXON_FLG_ANT_B_MSK;
 }


 IL_ERR("Bad antenna selector value (0x%x)\n",
        il3945_mod_params.antenna);

 return 0;
}
