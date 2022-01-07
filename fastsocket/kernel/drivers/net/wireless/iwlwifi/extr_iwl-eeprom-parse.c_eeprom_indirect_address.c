
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;


 int ADDRESS_MSK ;
 int EEPROM_LINK_CALIBRATION ;
 int EEPROM_LINK_GENERAL ;
 int EEPROM_LINK_HOST ;
 int EEPROM_LINK_OTHERS ;
 int EEPROM_LINK_PROCESS_ADJST ;
 int EEPROM_LINK_REGULATORY ;
 int EEPROM_LINK_TXP_LIMIT ;
 int EEPROM_LINK_TXP_LIMIT_SIZE ;
 int INDIRECT_ADDRESS ;
 int INDIRECT_TYPE_MSK ;
 int WARN_ON (int) ;
 int iwl_eeprom_query16 (int const*,size_t,int ) ;

__attribute__((used)) static u32 eeprom_indirect_address(const u8 *eeprom, size_t eeprom_size,
       u32 address)
{
 u16 offset = 0;

 if ((address & INDIRECT_ADDRESS) == 0)
  return address;

 switch (address & INDIRECT_TYPE_MSK) {
 case 133:
  offset = iwl_eeprom_query16(eeprom, eeprom_size,
         EEPROM_LINK_HOST);
  break;
 case 134:
  offset = iwl_eeprom_query16(eeprom, eeprom_size,
         EEPROM_LINK_GENERAL);
  break;
 case 130:
  offset = iwl_eeprom_query16(eeprom, eeprom_size,
         EEPROM_LINK_REGULATORY);
  break;
 case 129:
  offset = iwl_eeprom_query16(eeprom, eeprom_size,
         EEPROM_LINK_TXP_LIMIT);
  break;
 case 128:
  offset = iwl_eeprom_query16(eeprom, eeprom_size,
         EEPROM_LINK_TXP_LIMIT_SIZE);
  break;
 case 135:
  offset = iwl_eeprom_query16(eeprom, eeprom_size,
         EEPROM_LINK_CALIBRATION);
  break;
 case 131:
  offset = iwl_eeprom_query16(eeprom, eeprom_size,
         EEPROM_LINK_PROCESS_ADJST);
  break;
 case 132:
  offset = iwl_eeprom_query16(eeprom, eeprom_size,
         EEPROM_LINK_OTHERS);
  break;
 default:
  WARN_ON(1);
  break;
 }


 return (address & ADDRESS_MSK) + (offset << 1);
}
