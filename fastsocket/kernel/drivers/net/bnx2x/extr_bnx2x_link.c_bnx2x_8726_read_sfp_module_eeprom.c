
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct link_params {struct bnx2x* bp; } ;
struct bnx2x_phy {int dummy; } ;
struct bnx2x {int dummy; } ;


 int DP (int ,char*,...) ;
 int EINVAL ;
 int MDIO_PMA_DEVAD ;
 scalar_t__ MDIO_PMA_REG_8726_TWO_WIRE_DATA_BUF ;
 int MDIO_PMA_REG_8726_TWO_WIRE_DATA_MASK ;
 scalar_t__ MDIO_PMA_REG_SFP_TWO_WIRE_BYTE_CNT ;
 scalar_t__ MDIO_PMA_REG_SFP_TWO_WIRE_CTRL ;
 int MDIO_PMA_REG_SFP_TWO_WIRE_CTRL_STATUS_MASK ;
 scalar_t__ MDIO_PMA_REG_SFP_TWO_WIRE_MEM_ADDR ;
 int MDIO_PMA_REG_SFP_TWO_WIRE_STATUS_COMPLETE ;
 int MDIO_PMA_REG_SFP_TWO_WIRE_STATUS_IDLE ;
 int NETIF_MSG_LINK ;
 int SFP_EEPROM_PAGE_SIZE ;
 int bnx2x_cl45_read (struct bnx2x*,struct bnx2x_phy*,int ,scalar_t__,int*) ;
 int bnx2x_cl45_write (struct bnx2x*,struct bnx2x_phy*,int ,scalar_t__,int) ;
 int udelay (int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int bnx2x_8726_read_sfp_module_eeprom(struct bnx2x_phy *phy,
          struct link_params *params,
          u8 dev_addr, u16 addr, u8 byte_cnt,
          u8 *o_buf, u8 is_init)
{
 struct bnx2x *bp = params->bp;
 u16 val = 0;
 u16 i;
 if (byte_cnt > SFP_EEPROM_PAGE_SIZE) {
  DP(NETIF_MSG_LINK,
     "Reading from eeprom is limited to 0xf\n");
  return -EINVAL;
 }

 bnx2x_cl45_write(bp, phy,
    MDIO_PMA_DEVAD, MDIO_PMA_REG_SFP_TWO_WIRE_BYTE_CNT,
    (byte_cnt | (dev_addr << 8)));


 bnx2x_cl45_write(bp, phy,
    MDIO_PMA_DEVAD, MDIO_PMA_REG_SFP_TWO_WIRE_MEM_ADDR,
    addr);


 bnx2x_cl45_write(bp, phy,
    MDIO_PMA_DEVAD, MDIO_PMA_REG_SFP_TWO_WIRE_CTRL,
    0x2c0f);


 for (i = 0; i < 100; i++) {
  bnx2x_cl45_read(bp, phy,
    MDIO_PMA_DEVAD,
    MDIO_PMA_REG_SFP_TWO_WIRE_CTRL, &val);
  if ((val & MDIO_PMA_REG_SFP_TWO_WIRE_CTRL_STATUS_MASK) ==
      MDIO_PMA_REG_SFP_TWO_WIRE_STATUS_COMPLETE)
   break;
  udelay(5);
 }

 if ((val & MDIO_PMA_REG_SFP_TWO_WIRE_CTRL_STATUS_MASK) !=
      MDIO_PMA_REG_SFP_TWO_WIRE_STATUS_COMPLETE) {
  DP(NETIF_MSG_LINK,
    "Got bad status 0x%x when reading from SFP+ EEPROM\n",
    (val & MDIO_PMA_REG_SFP_TWO_WIRE_CTRL_STATUS_MASK));
  return -EINVAL;
 }


 for (i = 0; i < byte_cnt; i++) {
  bnx2x_cl45_read(bp, phy,
    MDIO_PMA_DEVAD,
    MDIO_PMA_REG_8726_TWO_WIRE_DATA_BUF + i, &val);
  o_buf[i] = (u8)(val & MDIO_PMA_REG_8726_TWO_WIRE_DATA_MASK);
 }

 for (i = 0; i < 100; i++) {
  bnx2x_cl45_read(bp, phy,
    MDIO_PMA_DEVAD,
    MDIO_PMA_REG_SFP_TWO_WIRE_CTRL, &val);
  if ((val & MDIO_PMA_REG_SFP_TWO_WIRE_CTRL_STATUS_MASK) ==
      MDIO_PMA_REG_SFP_TWO_WIRE_STATUS_IDLE)
   return 0;
  usleep_range(1000, 2000);
 }
 return -EINVAL;
}
