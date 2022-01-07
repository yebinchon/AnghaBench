
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct il_priv {TYPE_1__* cfg; } ;
struct TYPE_2__ {scalar_t__ eeprom_ver; scalar_t__ eeprom_calib_ver; } ;


 int EEPROM_4965_CALIB_VERSION_OFFSET ;
 int EEPROM_VERSION ;
 int EINVAL ;
 int IL_ERR (char*,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int IL_INFO (char*,scalar_t__,scalar_t__) ;
 scalar_t__ il_eeprom_query16 (struct il_priv*,int ) ;

int
il4965_eeprom_check_version(struct il_priv *il)
{
 u16 eeprom_ver;
 u16 calib_ver;

 eeprom_ver = il_eeprom_query16(il, EEPROM_VERSION);
 calib_ver = il_eeprom_query16(il, EEPROM_4965_CALIB_VERSION_OFFSET);

 if (eeprom_ver < il->cfg->eeprom_ver ||
     calib_ver < il->cfg->eeprom_calib_ver)
  goto err;

 IL_INFO("device EEPROM VER=0x%x, CALIB=0x%x\n", eeprom_ver, calib_ver);

 return 0;
err:
 IL_ERR("Unsupported (too old) EEPROM VER=0x%x < 0x%x "
        "CALIB=0x%x < 0x%x\n", eeprom_ver, il->cfg->eeprom_ver,
        calib_ver, il->cfg->eeprom_calib_ver);
 return -EINVAL;

}
