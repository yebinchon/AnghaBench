
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_3__ {int (* release ) (struct e1000_hw*) ;scalar_t__ (* acquire ) (struct e1000_hw*) ;} ;
struct TYPE_4__ {TYPE_1__ ops; int addr; } ;
struct e1000_hw {TYPE_2__ phy; } ;
typedef scalar_t__ s32 ;


 int BM_PHY_REG_NUM (int ) ;
 int BM_PHY_REG_PAGE (int ) ;
 int BM_WUC_PAGE ;
 int HV_INTC_FC_PAGE_START ;
 int IGP_PAGE_SHIFT ;
 int MAX_PHY_MULTI_PAGE_REG ;
 int MAX_PHY_REG_ADDRESS ;
 scalar_t__ e1000_access_phy_debug_regs_hv (struct e1000_hw*,int ,int*,int) ;
 scalar_t__ e1000_access_phy_wakeup_reg_bm (struct e1000_hw*,int ,int*,int,int) ;
 int e1000_get_phy_addr_for_hv_page (int) ;
 scalar_t__ e1000_set_page_igp (struct e1000_hw*,int) ;
 scalar_t__ e1000e_read_phy_reg_mdic (struct e1000_hw*,int,int*) ;
 int e_dbg (char*,int,int,int) ;
 scalar_t__ stub1 (struct e1000_hw*) ;
 int stub2 (struct e1000_hw*) ;

__attribute__((used)) static s32 __e1000_read_phy_reg_hv(struct e1000_hw *hw, u32 offset, u16 *data,
       bool locked, bool page_set)
{
 s32 ret_val;
 u16 page = BM_PHY_REG_PAGE(offset);
 u16 reg = BM_PHY_REG_NUM(offset);
 u32 phy_addr = hw->phy.addr = e1000_get_phy_addr_for_hv_page(page);

 if (!locked) {
  ret_val = hw->phy.ops.acquire(hw);
  if (ret_val)
   return ret_val;
 }


 if (page == BM_WUC_PAGE) {
  ret_val = e1000_access_phy_wakeup_reg_bm(hw, offset, data,
        1, page_set);
  goto out;
 }

 if (page > 0 && page < HV_INTC_FC_PAGE_START) {
  ret_val = e1000_access_phy_debug_regs_hv(hw, offset,
        data, 1);
  goto out;
 }

 if (!page_set) {
  if (page == HV_INTC_FC_PAGE_START)
   page = 0;

  if (reg > MAX_PHY_MULTI_PAGE_REG) {

   ret_val = e1000_set_page_igp(hw,
           (page << IGP_PAGE_SHIFT));

   hw->phy.addr = phy_addr;

   if (ret_val)
    goto out;
  }
 }

 e_dbg("reading PHY page %d (or 0x%x shifted) reg 0x%x\n", page,
       page << IGP_PAGE_SHIFT, reg);

 ret_val = e1000e_read_phy_reg_mdic(hw, MAX_PHY_REG_ADDRESS & reg, data);
out:
 if (!locked)
  hw->phy.ops.release(hw);

 return ret_val;
}
