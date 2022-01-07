
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct atl2_hw {int dummy; } ;
typedef int s32 ;


 int ATL2_READ_REG (struct atl2_hw*,int ) ;
 int ATL2_WRITE_REG (struct atl2_hw*,int ,int) ;
 int ATLX_ERR_PHY ;
 int MDIO_BUSY ;
 int MDIO_CLK_25_4 ;
 int MDIO_CLK_SEL_SHIFT ;
 int MDIO_REG_ADDR_MASK ;
 int MDIO_REG_ADDR_SHIFT ;
 int MDIO_RW ;
 int MDIO_START ;
 int MDIO_SUP_PREAMBLE ;
 int MDIO_WAIT_TIMES ;
 int REG_MDIO_CTRL ;
 int udelay (int) ;
 int wmb () ;

__attribute__((used)) static s32 atl2_read_phy_reg(struct atl2_hw *hw, u16 reg_addr, u16 *phy_data)
{
 u32 val;
 int i;

 val = ((u32)(reg_addr & MDIO_REG_ADDR_MASK)) << MDIO_REG_ADDR_SHIFT |
  MDIO_START |
  MDIO_SUP_PREAMBLE |
  MDIO_RW |
  MDIO_CLK_25_4 << MDIO_CLK_SEL_SHIFT;
 ATL2_WRITE_REG(hw, REG_MDIO_CTRL, val);

 wmb();

 for (i = 0; i < MDIO_WAIT_TIMES; i++) {
  udelay(2);
  val = ATL2_READ_REG(hw, REG_MDIO_CTRL);
  if (!(val & (MDIO_START | MDIO_BUSY)))
   break;
  wmb();
 }
 if (!(val & (MDIO_START | MDIO_BUSY))) {
  *phy_data = (u16)val;
  return 0;
 }

 return ATLX_ERR_PHY;
}
