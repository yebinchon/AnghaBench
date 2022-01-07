
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct link_params {struct bnx2x* bp; } ;
struct bnx2x_phy {int dummy; } ;
struct bnx2x {int dummy; } ;






 int MDIO_PMA_DEVAD ;
 int MDIO_PMA_REG_7107_LINK_LED_CNTL ;
 int bnx2x_cl45_write (struct bnx2x*,struct bnx2x_phy*,int ,int ,int) ;

__attribute__((used)) static void bnx2x_7101_set_link_led(struct bnx2x_phy *phy,
        struct link_params *params, u8 mode)
{
 u16 val = 0;
 struct bnx2x *bp = params->bp;
 switch (mode) {
 case 131:
 case 130:
  val = 2;
  break;
 case 129:
  val = 1;
  break;
 case 128:
  val = 0;
  break;
 }
 bnx2x_cl45_write(bp, phy,
    MDIO_PMA_DEVAD,
    MDIO_PMA_REG_7107_LINK_LED_CNTL,
    val);
}
