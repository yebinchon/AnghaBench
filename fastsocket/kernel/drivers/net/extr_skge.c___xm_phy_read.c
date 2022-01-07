
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct skge_hw {int phy_addr; scalar_t__ phy_type; } ;


 int ETIMEDOUT ;
 int PHY_RETRIES ;
 scalar_t__ SK_PHY_XMAC ;
 int XM_MMU_CMD ;
 int XM_MMU_PHY_RDY ;
 int XM_PHY_ADDR ;
 int XM_PHY_DATA ;
 int udelay (int) ;
 int xm_read16 (struct skge_hw*,int,int ) ;
 int xm_write16 (struct skge_hw*,int,int ,int) ;

__attribute__((used)) static int __xm_phy_read(struct skge_hw *hw, int port, u16 reg, u16 *val)
{
 int i;

 xm_write16(hw, port, XM_PHY_ADDR, reg | hw->phy_addr);
 *val = xm_read16(hw, port, XM_PHY_DATA);

 if (hw->phy_type == SK_PHY_XMAC)
  goto ready;

 for (i = 0; i < PHY_RETRIES; i++) {
  if (xm_read16(hw, port, XM_MMU_CMD) & XM_MMU_PHY_RDY)
   goto ready;
  udelay(1);
 }

 return -ETIMEDOUT;
 ready:
 *val = xm_read16(hw, port, XM_PHY_DATA);

 return 0;
}
