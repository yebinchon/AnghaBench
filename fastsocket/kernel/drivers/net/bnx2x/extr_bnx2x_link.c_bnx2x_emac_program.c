
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct link_vars {int line_speed; scalar_t__ duplex; } ;
struct link_params {int port; struct bnx2x* bp; } ;
struct bnx2x {int dummy; } ;


 int DP (int ,char*,...) ;
 scalar_t__ DUPLEX_HALF ;
 int EINVAL ;
 int EMAC_MODE_25G_MODE ;
 int EMAC_MODE_HALF_DUPLEX ;
 int EMAC_MODE_PORT_GMII ;
 int EMAC_MODE_PORT_MII ;
 int EMAC_MODE_PORT_MII_10M ;
 scalar_t__ EMAC_REG_EMAC_MODE ;
 scalar_t__ GRCBASE_EMAC0 ;
 int LED_MODE_OPER ;
 int NETIF_MSG_LINK ;




 int bnx2x_bits_dis (struct bnx2x*,scalar_t__,int) ;
 int bnx2x_bits_en (struct bnx2x*,scalar_t__,int) ;
 int bnx2x_set_led (struct link_params*,struct link_vars*,int ,int) ;

__attribute__((used)) static int bnx2x_emac_program(struct link_params *params,
         struct link_vars *vars)
{
 struct bnx2x *bp = params->bp;
 u8 port = params->port;
 u16 mode = 0;

 DP(NETIF_MSG_LINK, "setting link speed & duplex\n");
 bnx2x_bits_dis(bp, GRCBASE_EMAC0 + port*0x400 +
         EMAC_REG_EMAC_MODE,
         (EMAC_MODE_25G_MODE |
   EMAC_MODE_PORT_MII_10M |
   EMAC_MODE_HALF_DUPLEX));
 switch (vars->line_speed) {
 case 131:
  mode |= EMAC_MODE_PORT_MII_10M;
  break;

 case 130:
  mode |= EMAC_MODE_PORT_MII;
  break;

 case 129:
  mode |= EMAC_MODE_PORT_GMII;
  break;

 case 128:
  mode |= (EMAC_MODE_25G_MODE | EMAC_MODE_PORT_GMII);
  break;

 default:

  DP(NETIF_MSG_LINK, "Invalid line_speed 0x%x\n",
      vars->line_speed);
  return -EINVAL;
 }

 if (vars->duplex == DUPLEX_HALF)
  mode |= EMAC_MODE_HALF_DUPLEX;
 bnx2x_bits_en(bp,
        GRCBASE_EMAC0 + port*0x400 + EMAC_REG_EMAC_MODE,
        mode);

 bnx2x_set_led(params, vars, LED_MODE_OPER, vars->line_speed);
 return 0;
}
