
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct bnx2x_phy {int dummy; } ;
struct bnx2x {int dummy; } ;


 int DP (int ,char*) ;
 int EINVAL ;
 int MDIO_PMA_DEVAD ;
 int MDIO_PMA_REG_8073_CHIP_REV ;
 int MDIO_PMA_REG_8073_SPEED_LINK_STATUS ;
 int MDIO_PMA_REG_8073_XAUI_WA ;
 int NETIF_MSG_LINK ;
 int bnx2x_cl45_read (struct bnx2x*,struct bnx2x_phy*,int ,int ,int*) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int bnx2x_8073_xaui_wa(struct bnx2x *bp, struct bnx2x_phy *phy)
{
 u16 val, cnt, cnt1 ;

 bnx2x_cl45_read(bp, phy,
   MDIO_PMA_DEVAD,
   MDIO_PMA_REG_8073_CHIP_REV, &val);

 if (val > 0) {

  return 0;
 }






 for (cnt = 0; cnt < 1000; cnt++) {
  bnx2x_cl45_read(bp, phy,
    MDIO_PMA_DEVAD,
    MDIO_PMA_REG_8073_SPEED_LINK_STATUS,
    &val);




  if (!(val & (1<<14)) || !(val & (1<<13))) {
   DP(NETIF_MSG_LINK, "XAUI work-around not required\n");
   return 0;
  } else if (!(val & (1<<15))) {
   DP(NETIF_MSG_LINK, "bit 15 went off\n");





   for (cnt1 = 0; cnt1 < 1000; cnt1++) {
    bnx2x_cl45_read(bp, phy,
     MDIO_PMA_DEVAD,
     MDIO_PMA_REG_8073_XAUI_WA, &val);
    if (val & (1<<15)) {
     DP(NETIF_MSG_LINK,
       "XAUI workaround has completed\n");
     return 0;
     }
     usleep_range(3000, 6000);
   }
   break;
  }
  usleep_range(3000, 6000);
 }
 DP(NETIF_MSG_LINK, "Warning: XAUI work-around timeout !!!\n");
 return -EINVAL;
}
