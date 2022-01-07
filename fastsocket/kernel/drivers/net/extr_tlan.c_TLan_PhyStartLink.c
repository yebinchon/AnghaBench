
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct net_device {int base_addr; int name; } ;
struct TYPE_3__ {int* phy; size_t phyNum; scalar_t__ speed; scalar_t__ duplex; void* tlanFullDuplex; scalar_t__ aui; } ;
typedef TYPE_1__ TLanPrivateInfo ;


 int HZ ;
 int MII_AN_ADV ;
 int MII_GC_DUPLEX ;
 int MII_GC_SPEEDSEL ;
 int MII_GEN_CTL ;
 int MII_GEN_STS ;
 int MII_GS_AUTONEG ;
 int TLAN_DBG (int ,char*,int ) ;
 int TLAN_DEBUG_GNRL ;
 scalar_t__ TLAN_DUPLEX_FULL ;
 scalar_t__ TLAN_DUPLEX_HALF ;
 int TLAN_NET_CFG_1CHAN ;
 int TLAN_NET_CFG_1FRAG ;
 int TLAN_NET_CFG_PHY_EN ;
 int TLAN_NET_CONFIG ;
 scalar_t__ TLAN_SPEED_10 ;
 scalar_t__ TLAN_SPEED_100 ;
 int TLAN_TC_AUISEL ;
 int TLAN_TIMER_FINISH_RESET ;
 int TLAN_TIMER_PHY_FINISH_AN ;
 int TLAN_TIMER_PHY_PDOWN ;
 int TLAN_TLPHY_CTL ;
 int TLan_DioWrite16 (int ,int ,int) ;
 int TLan_MiiReadReg (struct net_device*,int,int ,int*) ;
 int TLan_MiiWriteReg (struct net_device*,int,int ,int) ;
 int TLan_SetTimer (struct net_device*,int,int ) ;
 void* TRUE ;
 TYPE_1__* netdev_priv (struct net_device*) ;
 int printk (char*,int ) ;

__attribute__((used)) static void TLan_PhyStartLink( struct net_device *dev )
{
 TLanPrivateInfo *priv = netdev_priv(dev);
 u16 ability;
 u16 control;
 u16 data;
 u16 phy;
 u16 status;
 u16 tctl;

 phy = priv->phy[priv->phyNum];
 TLAN_DBG( TLAN_DEBUG_GNRL, "%s: Trying to activate link.\n", dev->name );
 TLan_MiiReadReg( dev, phy, MII_GEN_STS, &status );
 TLan_MiiReadReg( dev, phy, MII_GEN_STS, &ability );

 if ( ( status & MII_GS_AUTONEG ) &&
      ( ! priv->aui ) ) {
  ability = status >> 11;
  if ( priv->speed == TLAN_SPEED_10 &&
       priv->duplex == TLAN_DUPLEX_HALF) {
   TLan_MiiWriteReg( dev, phy, MII_GEN_CTL, 0x0000);
  } else if ( priv->speed == TLAN_SPEED_10 &&
       priv->duplex == TLAN_DUPLEX_FULL) {
   priv->tlanFullDuplex = TRUE;
   TLan_MiiWriteReg( dev, phy, MII_GEN_CTL, 0x0100);
  } else if ( priv->speed == TLAN_SPEED_100 &&
       priv->duplex == TLAN_DUPLEX_HALF) {
   TLan_MiiWriteReg( dev, phy, MII_GEN_CTL, 0x2000);
  } else if ( priv->speed == TLAN_SPEED_100 &&
       priv->duplex == TLAN_DUPLEX_FULL) {
   priv->tlanFullDuplex = TRUE;
   TLan_MiiWriteReg( dev, phy, MII_GEN_CTL, 0x2100);
  } else {


   TLan_MiiWriteReg( dev, phy, MII_AN_ADV, (ability << 5) | 1);

   TLan_MiiWriteReg( dev, phy, MII_GEN_CTL, 0x1000 );

   TLan_MiiWriteReg( dev, phy, MII_GEN_CTL, 0x1200 );





   printk( "TLAN: %s: Starting autonegotiation.\n", dev->name );
   TLan_SetTimer( dev, (2*HZ), TLAN_TIMER_PHY_FINISH_AN );
   return;
  }

 }

 if ( ( priv->aui ) && ( priv->phyNum != 0 ) ) {
  priv->phyNum = 0;
  data = TLAN_NET_CFG_1FRAG | TLAN_NET_CFG_1CHAN | TLAN_NET_CFG_PHY_EN;
  TLan_DioWrite16( dev->base_addr, TLAN_NET_CONFIG, data );
  TLan_SetTimer( dev, (40*HZ/1000), TLAN_TIMER_PHY_PDOWN );
  return;
 } else if ( priv->phyNum == 0 ) {
  control = 0;
         TLan_MiiReadReg( dev, phy, TLAN_TLPHY_CTL, &tctl );
  if ( priv->aui ) {
                 tctl |= TLAN_TC_AUISEL;
  } else {
                 tctl &= ~TLAN_TC_AUISEL;
   if ( priv->duplex == TLAN_DUPLEX_FULL ) {
    control |= MII_GC_DUPLEX;
    priv->tlanFullDuplex = TRUE;
   }
   if ( priv->speed == TLAN_SPEED_100 ) {
    control |= MII_GC_SPEEDSEL;
   }
  }
  TLan_MiiWriteReg( dev, phy, MII_GEN_CTL, control );
         TLan_MiiWriteReg( dev, phy, TLAN_TLPHY_CTL, tctl );
 }




 TLan_SetTimer( dev, (4*HZ), TLAN_TIMER_FINISH_RESET );

}
