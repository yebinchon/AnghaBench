
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct il_priv {scalar_t__* eeprom; } ;



u16
il_eeprom_query16(const struct il_priv *il, size_t offset)
{
 if (!il->eeprom)
  return 0;
 return (u16) il->eeprom[offset] | ((u16) il->eeprom[offset + 1] << 8);
}
