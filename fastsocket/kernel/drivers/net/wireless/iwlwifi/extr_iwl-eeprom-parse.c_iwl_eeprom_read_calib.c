
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct iwl_nvm_data {int calib_voltage; int calib_version; } ;
struct iwl_eeprom_calib_hdr {int voltage; int version; } ;


 int EEPROM_CALIB_ALL ;
 int ENODATA ;
 scalar_t__ iwl_eeprom_query_addr (int const*,size_t,int ) ;

__attribute__((used)) static int iwl_eeprom_read_calib(const u8 *eeprom, size_t eeprom_size,
     struct iwl_nvm_data *data)
{
 struct iwl_eeprom_calib_hdr *hdr;

 hdr = (void *)iwl_eeprom_query_addr(eeprom, eeprom_size,
         EEPROM_CALIB_ALL);
 if (!hdr)
  return -ENODATA;
 data->calib_version = hdr->version;
 data->calib_voltage = hdr->voltage;

 return 0;
}
