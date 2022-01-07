
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct link_params {struct bnx2x* bp; } ;
struct bnx2x_phy {int flags; } ;
struct bnx2x {int dummy; } ;



 int DP (int ,char*,int) ;

 int FLAGS_NOC ;
 int FLAGS_SFP_NOT_APPROVED ;
 int MDIO_PMA_DEVAD ;
 int MDIO_PMA_LASI_CTRL ;
 int MDIO_PMA_LASI_RXCTRL ;
 int MDIO_PMA_LASI_TXCTRL ;
 int MDIO_PMA_REG_8727_PCS_OPT_CTRL ;
 int NETIF_MSG_LINK ;

 int bnx2x_cl45_read (struct bnx2x*,struct bnx2x_phy*,int ,int ,int*) ;
 int bnx2x_cl45_write (struct bnx2x*,struct bnx2x_phy*,int ,int ,int) ;
 int bnx2x_sfp_set_transmitter (struct link_params*,struct bnx2x_phy*,int) ;

__attribute__((used)) static void bnx2x_8727_specific_func(struct bnx2x_phy *phy,
         struct link_params *params,
         u32 action)
{
 struct bnx2x *bp = params->bp;
 u16 val;
 switch (action) {
 case 130:
  bnx2x_sfp_set_transmitter(params, phy, 0);
  break;
 case 129:
  if (!(phy->flags & FLAGS_SFP_NOT_APPROVED))
   bnx2x_sfp_set_transmitter(params, phy, 1);
  break;
 case 128:
  bnx2x_cl45_write(bp, phy,
     MDIO_PMA_DEVAD, MDIO_PMA_LASI_RXCTRL,
     (1<<2) | (1<<5));
  bnx2x_cl45_write(bp, phy,
     MDIO_PMA_DEVAD, MDIO_PMA_LASI_TXCTRL,
     0);
  bnx2x_cl45_write(bp, phy,
     MDIO_PMA_DEVAD, MDIO_PMA_LASI_CTRL, 0x0006);

  bnx2x_cl45_read(bp, phy, MDIO_PMA_DEVAD,
    MDIO_PMA_REG_8727_PCS_OPT_CTRL,
    &val);
  val |= (1<<12);
  if (phy->flags & FLAGS_NOC)
   val |= (3<<5);



  if (!(phy->flags & FLAGS_NOC))
   val &= 0xff8f;
  bnx2x_cl45_write(bp, phy,
     MDIO_PMA_DEVAD, MDIO_PMA_REG_8727_PCS_OPT_CTRL,
     val);
  break;
 default:
  DP(NETIF_MSG_LINK, "Function 0x%x not supported by 8727\n",
     action);
  return;
 }
}
