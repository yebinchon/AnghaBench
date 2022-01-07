
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
typedef int __le16 ;


 scalar_t__ WARN_ON (int) ;
 int le16_to_cpup (int *) ;

__attribute__((used)) static u16 iwl_eeprom_query16(const u8 *eeprom, size_t eeprom_size, int offset)
{
 if (WARN_ON(offset + sizeof(u16) > eeprom_size))
  return 0;
 return le16_to_cpup((__le16 *)(eeprom + offset));
}
