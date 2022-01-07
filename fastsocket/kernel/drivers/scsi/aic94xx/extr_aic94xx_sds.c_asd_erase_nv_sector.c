
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int bar; int method; } ;
struct TYPE_4__ {TYPE_1__ flash; } ;
struct asd_ha_struct {TYPE_2__ hw_prof; } ;


 int FAIL_ERASE_FLASH ;


 scalar_t__ FLASH_SECTOR_SIZE ;
 int FLASH_SECTOR_SIZE_MASK ;
 scalar_t__ asd_chk_write_status (struct asd_ha_struct*,int,int) ;
 int asd_write_reg_byte (struct asd_ha_struct*,int ,int) ;

int asd_erase_nv_sector(struct asd_ha_struct *asd_ha, u32 flash_addr, u32 size)
{
 u32 reg;
 u32 sector_addr;

 reg = asd_ha->hw_prof.flash.bar;


 sector_addr = flash_addr & FLASH_SECTOR_SIZE_MASK;





 while (sector_addr < flash_addr+size) {
  switch (asd_ha->hw_prof.flash.method) {
  case 129:
   asd_write_reg_byte(asd_ha, (reg + 0xAAA), 0xAA);
   asd_write_reg_byte(asd_ha, (reg + 0x555), 0x55);
   asd_write_reg_byte(asd_ha, (reg + 0xAAA), 0x80);
   asd_write_reg_byte(asd_ha, (reg + 0xAAA), 0xAA);
   asd_write_reg_byte(asd_ha, (reg + 0x555), 0x55);
   asd_write_reg_byte(asd_ha, (reg + sector_addr), 0x30);
   break;
  case 128:
   asd_write_reg_byte(asd_ha, (reg + 0x555), 0xAA);
   asd_write_reg_byte(asd_ha, (reg + 0x2AA), 0x55);
   asd_write_reg_byte(asd_ha, (reg + 0x555), 0x80);
   asd_write_reg_byte(asd_ha, (reg + 0x555), 0xAA);
   asd_write_reg_byte(asd_ha, (reg + 0x2AA), 0x55);
   asd_write_reg_byte(asd_ha, (reg + sector_addr), 0x30);
   break;
  default:
   break;
  }

  if (asd_chk_write_status(asd_ha, sector_addr, 1) != 0)
   return FAIL_ERASE_FLASH;

  sector_addr += FLASH_SECTOR_SIZE;
 }

 return 0;
}
