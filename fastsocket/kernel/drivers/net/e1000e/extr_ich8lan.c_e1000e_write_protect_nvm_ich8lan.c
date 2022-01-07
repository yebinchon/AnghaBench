
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int flockdn; } ;
union ich8_hws_flash_status {void* regval; TYPE_2__ hsf_status; } ;
struct TYPE_4__ {int base; int limit; int wpe; } ;
union ich8_flash_protected_range {void* regval; TYPE_1__ range; } ;
typedef int u32 ;
struct TYPE_6__ {int (* release ) (struct e1000_hw*) ;int (* acquire ) (struct e1000_hw*) ;} ;
struct e1000_nvm_info {TYPE_3__ ops; } ;
struct e1000_hw {struct e1000_nvm_info nvm; } ;


 int FLASH_GFPREG_BASE_MASK ;
 int ICH_FLASH_GFPREG ;
 int ICH_FLASH_HSFSTS ;
 int ICH_FLASH_PR0 ;
 void* er16flash (int ) ;
 void* er32flash (int ) ;
 int ew32flash (int ,void*) ;
 int stub1 (struct e1000_hw*) ;
 int stub2 (struct e1000_hw*) ;

void e1000e_write_protect_nvm_ich8lan(struct e1000_hw *hw)
{
 struct e1000_nvm_info *nvm = &hw->nvm;
 union ich8_flash_protected_range pr0;
 union ich8_hws_flash_status hsfsts;
 u32 gfpreg;

 nvm->ops.acquire(hw);

 gfpreg = er32flash(ICH_FLASH_GFPREG);


 pr0.regval = er32flash(ICH_FLASH_PR0);
 pr0.range.base = gfpreg & FLASH_GFPREG_BASE_MASK;
 pr0.range.limit = ((gfpreg >> 16) & FLASH_GFPREG_BASE_MASK);
 pr0.range.wpe = 1;
 ew32flash(ICH_FLASH_PR0, pr0.regval);






 hsfsts.regval = er16flash(ICH_FLASH_HSFSTS);
 hsfsts.hsf_status.flockdn = 1;
 ew32flash(ICH_FLASH_HSFSTS, hsfsts.regval);

 nvm->ops.release(hw);
}
