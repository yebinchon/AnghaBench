
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct skge_hw {int phy_addr; } ;


 int ETIMEDOUT ;
 int GM_SMI_CTRL ;
 int GM_SMI_CT_OP_RD ;
 int GM_SMI_CT_PHY_AD (int ) ;
 int GM_SMI_CT_RD_VAL ;
 int GM_SMI_CT_REG_AD (int) ;
 int GM_SMI_DATA ;
 int PHY_RETRIES ;
 int gma_read16 (struct skge_hw*,int,int ) ;
 int gma_write16 (struct skge_hw*,int,int ,int) ;
 int udelay (int) ;

__attribute__((used)) static int __gm_phy_read(struct skge_hw *hw, int port, u16 reg, u16 *val)
{
 int i;

 gma_write16(hw, port, GM_SMI_CTRL,
    GM_SMI_CT_PHY_AD(hw->phy_addr)
    | GM_SMI_CT_REG_AD(reg) | GM_SMI_CT_OP_RD);

 for (i = 0; i < PHY_RETRIES; i++) {
  udelay(1);
  if (gma_read16(hw, port, GM_SMI_CTRL) & GM_SMI_CT_RD_VAL)
   goto ready;
 }

 return -ETIMEDOUT;
 ready:
 *val = gma_read16(hw, port, GM_SMI_DATA);
 return 0;
}
