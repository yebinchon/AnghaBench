
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef size_t u16 ;
struct e1000_nvm_info {int flash_base_addr; int flash_bank_size; size_t word_size; int type; } ;
struct e1000_dev_spec_ich8lan {TYPE_2__* shadow_ram; } ;
struct TYPE_3__ {struct e1000_dev_spec_ich8lan ich8lan; } ;
struct e1000_hw {int flash_address; TYPE_1__ dev_spec; struct e1000_nvm_info nvm; } ;
typedef int s32 ;
struct TYPE_4__ {int modified; int value; } ;


 int E1000_ERR_CONFIG ;
 size_t E1000_ICH8_SHADOW_RAM_WORDS ;
 int FLASH_GFPREG_BASE_MASK ;
 int FLASH_SECTOR_ADDR_SHIFT ;
 int ICH_FLASH_GFPREG ;
 int e1000_nvm_flash_sw ;
 int e_dbg (char*) ;
 int er32flash (int ) ;

__attribute__((used)) static s32 e1000_init_nvm_params_ich8lan(struct e1000_hw *hw)
{
 struct e1000_nvm_info *nvm = &hw->nvm;
 struct e1000_dev_spec_ich8lan *dev_spec = &hw->dev_spec.ich8lan;
 u32 gfpreg, sector_base_addr, sector_end_addr;
 u16 i;


 if (!hw->flash_address) {
  e_dbg("ERROR: Flash registers not mapped\n");
  return -E1000_ERR_CONFIG;
 }

 nvm->type = e1000_nvm_flash_sw;

 gfpreg = er32flash(ICH_FLASH_GFPREG);





 sector_base_addr = gfpreg & FLASH_GFPREG_BASE_MASK;
 sector_end_addr = ((gfpreg >> 16) & FLASH_GFPREG_BASE_MASK) + 1;


 nvm->flash_base_addr = sector_base_addr << FLASH_SECTOR_ADDR_SHIFT;




 nvm->flash_bank_size = ((sector_end_addr - sector_base_addr)
    << FLASH_SECTOR_ADDR_SHIFT);
 nvm->flash_bank_size /= 2;

 nvm->flash_bank_size /= sizeof(u16);

 nvm->word_size = E1000_ICH8_SHADOW_RAM_WORDS;


 for (i = 0; i < nvm->word_size; i++) {
  dev_spec->shadow_ram[i].modified = 0;
  dev_spec->shadow_ram[i].value = 0xFFFF;
 }

 return 0;
}
