
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct e1000_hw {int dummy; } ;
typedef scalar_t__ s32 ;


 int E1000_GCR ;
 int E1000_GCR_CAP_VER2 ;
 int E1000_GCR_CMPL_TMOUT_10ms ;
 int E1000_GCR_CMPL_TMOUT_MASK ;
 int E1000_GCR_CMPL_TMOUT_RESEND ;
 int PCIE_DEVICE_CONTROL2 ;
 int PCIE_DEVICE_CONTROL2_16ms ;
 scalar_t__ igb_read_pcie_cap_reg (struct e1000_hw*,int ,int *) ;
 scalar_t__ igb_write_pcie_cap_reg (struct e1000_hw*,int ,int *) ;
 int rd32 (int ) ;
 int wr32 (int ,int) ;

__attribute__((used)) static s32 igb_set_pcie_completion_timeout(struct e1000_hw *hw)
{
 u32 gcr = rd32(E1000_GCR);
 s32 ret_val = 0;
 u16 pcie_devctl2;


 if (gcr & E1000_GCR_CMPL_TMOUT_MASK)
  goto out;




 if (!(gcr & E1000_GCR_CAP_VER2)) {
  gcr |= E1000_GCR_CMPL_TMOUT_10ms;
  goto out;
 }





 ret_val = igb_read_pcie_cap_reg(hw, PCIE_DEVICE_CONTROL2,
                                 &pcie_devctl2);
 if (ret_val)
  goto out;

 pcie_devctl2 |= PCIE_DEVICE_CONTROL2_16ms;

 ret_val = igb_write_pcie_cap_reg(hw, PCIE_DEVICE_CONTROL2,
                                  &pcie_devctl2);
out:

 gcr &= ~E1000_GCR_CMPL_TMOUT_RESEND;

 wr32(E1000_GCR, gcr);
 return ret_val;
}
