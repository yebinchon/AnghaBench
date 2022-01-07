
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct link_params {struct bnx2x* bp; } ;
struct bnx2x_phy {int dummy; } ;
struct bnx2x {int dummy; } ;


 int MDIO_PMA_DEVAD ;
 int MDIO_PMA_LASI_CTRL ;
 int MDIO_PMA_LASI_RXCTRL ;

 int bnx2x_cl45_write (struct bnx2x*,struct bnx2x_phy*,int ,int ,int) ;

__attribute__((used)) static void bnx2x_8073_specific_func(struct bnx2x_phy *phy,
         struct link_params *params,
         u32 action)
{
 struct bnx2x *bp = params->bp;
 switch (action) {
 case 128:

  bnx2x_cl45_write(bp, phy,
     MDIO_PMA_DEVAD, MDIO_PMA_LASI_RXCTRL, (1<<2));
  bnx2x_cl45_write(bp, phy,
     MDIO_PMA_DEVAD, MDIO_PMA_LASI_CTRL, 0x0004);
  break;
 }
}
