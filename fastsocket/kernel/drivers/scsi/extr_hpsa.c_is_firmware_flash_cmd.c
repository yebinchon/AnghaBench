
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;


 scalar_t__ BMIC_FLASH_FIRMWARE ;
 scalar_t__ BMIC_WRITE ;

__attribute__((used)) static int is_firmware_flash_cmd(u8 *cdb)
{
 return cdb[0] == BMIC_WRITE && cdb[6] == BMIC_FLASH_FIRMWARE;
}
