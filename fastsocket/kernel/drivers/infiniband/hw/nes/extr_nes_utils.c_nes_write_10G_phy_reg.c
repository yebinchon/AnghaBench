
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
typedef int u16 ;
struct nes_device {int dummy; } ;


 int NES_DBG_PHY ;
 int NES_IDX_MAC_INT_STATUS ;
 int NES_IDX_MAC_MDIO_CONTROL ;
 int nes_debug (int ,char*,int) ;
 int nes_read_indexed (struct nes_device*,int ) ;
 int nes_write_indexed (struct nes_device*,int ,int) ;
 int udelay (int) ;

void nes_write_10G_phy_reg(struct nes_device *nesdev, u16 phy_addr, u8 dev_addr, u16 phy_reg,
  u16 data)
{
 u32 port_addr;
 u32 u32temp;
 u32 counter;

 port_addr = phy_addr;


 nes_write_indexed(nesdev, NES_IDX_MAC_MDIO_CONTROL,
   0x00020000 | (u32)phy_reg | (((u32)dev_addr) << 18) | (((u32)port_addr) << 23));
 for (counter = 0; counter < 100 ; counter++) {
  udelay(30);
  u32temp = nes_read_indexed(nesdev, NES_IDX_MAC_INT_STATUS);
  if (u32temp & 1) {
   nes_write_indexed(nesdev, NES_IDX_MAC_INT_STATUS, 1);
   break;
  }
 }
 if (!(u32temp & 1))
  nes_debug(NES_DBG_PHY, "Phy is not responding. interrupt status = 0x%X.\n",
    u32temp);


 nes_write_indexed(nesdev, NES_IDX_MAC_MDIO_CONTROL,
   0x10020000 | (u32)data | (((u32)dev_addr) << 18) | (((u32)port_addr) << 23));
 for (counter = 0; counter < 100 ; counter++) {
  udelay(30);
  u32temp = nes_read_indexed(nesdev, NES_IDX_MAC_INT_STATUS);
  if (u32temp & 1) {
   nes_write_indexed(nesdev, NES_IDX_MAC_INT_STATUS, 1);
   break;
  }
 }
 if (!(u32temp & 1))
  nes_debug(NES_DBG_PHY, "Phy is not responding. interrupt status = 0x%X.\n",
    u32temp);
}
