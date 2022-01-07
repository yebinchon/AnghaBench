
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_5__ {int (* release ) (struct e1000_hw*) ;scalar_t__ (* acquire ) (struct e1000_hw*) ;} ;
struct TYPE_6__ {int type; TYPE_2__ ops; } ;
struct e1000_dev_spec_ich8lan {int eee_lp_ability; int eee_disable; } ;
struct TYPE_4__ {struct e1000_dev_spec_ich8lan ich8lan; } ;
struct e1000_hw {TYPE_3__ phy; TYPE_1__ dev_spec; } ;
typedef scalar_t__ s32 ;


 int I217_EEE_ADVERTISEMENT ;
 int I217_EEE_LP_ABILITY ;
 int I217_EEE_PCS_STATUS ;
 int I82579_EEE_1000_SUPPORTED ;
 int I82579_EEE_100_SUPPORTED ;
 int I82579_EEE_ADVERTISEMENT ;
 int I82579_EEE_LP_ABILITY ;
 int I82579_EEE_PCS_STATUS ;
 int I82579_LPI_CTRL ;
 int I82579_LPI_CTRL_1000_ENABLE ;
 int I82579_LPI_CTRL_100_ENABLE ;
 int I82579_LPI_CTRL_ENABLE_MASK ;
 int LPA_100FULL ;
 int MII_LPA ;


 scalar_t__ e1000_read_emi_reg_locked (struct e1000_hw*,int,int*) ;
 scalar_t__ e1e_rphy_locked (struct e1000_hw*,int ,int*) ;
 scalar_t__ e1e_wphy_locked (struct e1000_hw*,int ,int) ;
 scalar_t__ stub1 (struct e1000_hw*) ;
 int stub2 (struct e1000_hw*) ;

__attribute__((used)) static s32 e1000_set_eee_pchlan(struct e1000_hw *hw)
{
 struct e1000_dev_spec_ich8lan *dev_spec = &hw->dev_spec.ich8lan;
 s32 ret_val;
 u16 lpa, pcs_status, adv, adv_addr, lpi_ctrl, data;

 switch (hw->phy.type) {
 case 129:
  lpa = I82579_EEE_LP_ABILITY;
  pcs_status = I82579_EEE_PCS_STATUS;
  adv_addr = I82579_EEE_ADVERTISEMENT;
  break;
 case 128:
  lpa = I217_EEE_LP_ABILITY;
  pcs_status = I217_EEE_PCS_STATUS;
  adv_addr = I217_EEE_ADVERTISEMENT;
  break;
 default:
  return 0;
 }

 ret_val = hw->phy.ops.acquire(hw);
 if (ret_val)
  return ret_val;

 ret_val = e1e_rphy_locked(hw, I82579_LPI_CTRL, &lpi_ctrl);
 if (ret_val)
  goto release;


 lpi_ctrl &= ~I82579_LPI_CTRL_ENABLE_MASK;


 if (!dev_spec->eee_disable) {

  ret_val = e1000_read_emi_reg_locked(hw, lpa,
          &dev_spec->eee_lp_ability);
  if (ret_val)
   goto release;


  ret_val = e1000_read_emi_reg_locked(hw, adv_addr, &adv);
  if (ret_val)
   goto release;




  if (adv & dev_spec->eee_lp_ability & I82579_EEE_1000_SUPPORTED)
   lpi_ctrl |= I82579_LPI_CTRL_1000_ENABLE;

  if (adv & dev_spec->eee_lp_ability & I82579_EEE_100_SUPPORTED) {
   e1e_rphy_locked(hw, MII_LPA, &data);
   if (data & LPA_100FULL)
    lpi_ctrl |= I82579_LPI_CTRL_100_ENABLE;
   else




    dev_spec->eee_lp_ability &=
        ~I82579_EEE_100_SUPPORTED;
  }
 }


 ret_val = e1000_read_emi_reg_locked(hw, pcs_status, &data);
 if (ret_val)
  goto release;

 ret_val = e1e_wphy_locked(hw, I82579_LPI_CTRL, lpi_ctrl);
release:
 hw->phy.ops.release(hw);

 return ret_val;
}
