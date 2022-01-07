
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_3__ {int (* release ) (struct e1000_hw*) ;int (* read_reg_page ) (struct e1000_hw*,int ,int *) ;scalar_t__ (* set_page ) (struct e1000_hw*,int) ;scalar_t__ (* acquire ) (struct e1000_hw*) ;} ;
struct TYPE_4__ {scalar_t__ type; TYPE_1__ ops; } ;
struct e1000_hw {TYPE_2__ phy; } ;
typedef scalar_t__ s32 ;


 int ALGNERRC ;
 int CEXTERR ;
 int HV_COLC_LOWER ;
 int HV_COLC_UPPER ;
 int HV_DC_LOWER ;
 int HV_DC_UPPER ;
 int HV_ECOL_LOWER ;
 int HV_ECOL_UPPER ;
 int HV_LATECOL_LOWER ;
 int HV_LATECOL_UPPER ;
 int HV_MCC_LOWER ;
 int HV_MCC_UPPER ;
 int HV_SCC_LOWER ;
 int HV_SCC_UPPER ;
 int HV_STATS_PAGE ;
 int HV_TNCRS_LOWER ;
 int HV_TNCRS_UPPER ;
 int IAC ;
 int ICRXOC ;
 int IGP_PAGE_SHIFT ;
 int MGTPDC ;
 int MGTPRC ;
 int MGTPTC ;
 int RXERRC ;
 int TNCRS ;
 int TSCTC ;
 int TSCTFC ;
 scalar_t__ e1000_phy_82577 ;
 scalar_t__ e1000_phy_82578 ;
 scalar_t__ e1000_phy_82579 ;
 scalar_t__ e1000_phy_i217 ;
 int e1000e_clear_hw_cntrs_base (struct e1000_hw*) ;
 int er32 (int ) ;
 scalar_t__ stub1 (struct e1000_hw*) ;
 int stub10 (struct e1000_hw*,int ,int *) ;
 int stub11 (struct e1000_hw*,int ,int *) ;
 int stub12 (struct e1000_hw*,int ,int *) ;
 int stub13 (struct e1000_hw*,int ,int *) ;
 int stub14 (struct e1000_hw*,int ,int *) ;
 int stub15 (struct e1000_hw*,int ,int *) ;
 int stub16 (struct e1000_hw*,int ,int *) ;
 int stub17 (struct e1000_hw*) ;
 scalar_t__ stub2 (struct e1000_hw*,int) ;
 int stub3 (struct e1000_hw*,int ,int *) ;
 int stub4 (struct e1000_hw*,int ,int *) ;
 int stub5 (struct e1000_hw*,int ,int *) ;
 int stub6 (struct e1000_hw*,int ,int *) ;
 int stub7 (struct e1000_hw*,int ,int *) ;
 int stub8 (struct e1000_hw*,int ,int *) ;
 int stub9 (struct e1000_hw*,int ,int *) ;

__attribute__((used)) static void e1000_clear_hw_cntrs_ich8lan(struct e1000_hw *hw)
{
 u16 phy_data;
 s32 ret_val;

 e1000e_clear_hw_cntrs_base(hw);

 er32(ALGNERRC);
 er32(RXERRC);
 er32(TNCRS);
 er32(CEXTERR);
 er32(TSCTC);
 er32(TSCTFC);

 er32(MGTPRC);
 er32(MGTPDC);
 er32(MGTPTC);

 er32(IAC);
 er32(ICRXOC);


 if ((hw->phy.type == e1000_phy_82578) ||
     (hw->phy.type == e1000_phy_82579) ||
     (hw->phy.type == e1000_phy_i217) ||
     (hw->phy.type == e1000_phy_82577)) {
  ret_val = hw->phy.ops.acquire(hw);
  if (ret_val)
   return;
  ret_val = hw->phy.ops.set_page(hw,
            HV_STATS_PAGE << IGP_PAGE_SHIFT);
  if (ret_val)
   goto release;
  hw->phy.ops.read_reg_page(hw, HV_SCC_UPPER, &phy_data);
  hw->phy.ops.read_reg_page(hw, HV_SCC_LOWER, &phy_data);
  hw->phy.ops.read_reg_page(hw, HV_ECOL_UPPER, &phy_data);
  hw->phy.ops.read_reg_page(hw, HV_ECOL_LOWER, &phy_data);
  hw->phy.ops.read_reg_page(hw, HV_MCC_UPPER, &phy_data);
  hw->phy.ops.read_reg_page(hw, HV_MCC_LOWER, &phy_data);
  hw->phy.ops.read_reg_page(hw, HV_LATECOL_UPPER, &phy_data);
  hw->phy.ops.read_reg_page(hw, HV_LATECOL_LOWER, &phy_data);
  hw->phy.ops.read_reg_page(hw, HV_COLC_UPPER, &phy_data);
  hw->phy.ops.read_reg_page(hw, HV_COLC_LOWER, &phy_data);
  hw->phy.ops.read_reg_page(hw, HV_DC_UPPER, &phy_data);
  hw->phy.ops.read_reg_page(hw, HV_DC_LOWER, &phy_data);
  hw->phy.ops.read_reg_page(hw, HV_TNCRS_UPPER, &phy_data);
  hw->phy.ops.read_reg_page(hw, HV_TNCRS_LOWER, &phy_data);
release:
  hw->phy.ops.release(hw);
 }
}
