
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct link_params {struct bnx2x* bp; } ;
struct bnx2x_phy {int flags; } ;
struct bnx2x {int dummy; } ;


 int FLAGS_NOC ;




 int MDIO_PMA_DEVAD ;
 int MDIO_PMA_REG_8727_GPIO_CTRL ;
 int MDIO_PMA_REG_8727_PCS_OPT_CTRL ;
 int bnx2x_cl45_read (struct bnx2x*,struct bnx2x_phy*,int ,int ,int*) ;
 int bnx2x_cl45_write (struct bnx2x*,struct bnx2x_phy*,int ,int ,int) ;

__attribute__((used)) static void bnx2x_8727_set_link_led(struct bnx2x_phy *phy,
        struct link_params *params, u8 mode)
{
 struct bnx2x *bp = params->bp;
 u16 led_mode_bitmask = 0;
 u16 gpio_pins_bitmask = 0;
 u16 val;

 if (!(phy->flags & FLAGS_NOC))
  return;
 switch (mode) {
 case 131:
 case 130:
  led_mode_bitmask = 0;
  gpio_pins_bitmask = 0x03;
  break;
 case 129:
  led_mode_bitmask = 0;
  gpio_pins_bitmask = 0x02;
  break;
 case 128:
  led_mode_bitmask = 0x60;
  gpio_pins_bitmask = 0x11;
  break;
 }
 bnx2x_cl45_read(bp, phy,
   MDIO_PMA_DEVAD,
   MDIO_PMA_REG_8727_PCS_OPT_CTRL,
   &val);
 val &= 0xff8f;
 val |= led_mode_bitmask;
 bnx2x_cl45_write(bp, phy,
    MDIO_PMA_DEVAD,
    MDIO_PMA_REG_8727_PCS_OPT_CTRL,
    val);
 bnx2x_cl45_read(bp, phy,
   MDIO_PMA_DEVAD,
   MDIO_PMA_REG_8727_GPIO_CTRL,
   &val);
 val &= 0xffe0;
 val |= gpio_pins_bitmask;
 bnx2x_cl45_write(bp, phy,
    MDIO_PMA_DEVAD,
    MDIO_PMA_REG_8727_GPIO_CTRL,
    val);
}
