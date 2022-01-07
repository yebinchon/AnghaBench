
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef scalar_t__ u16 ;
struct net_device {int name; scalar_t__ base_addr; int dev_addr; } ;
struct TYPE_5__ {size_t phyNum; int link; int phyOnline; int rxListDMA; scalar_t__ aui; TYPE_1__* adapter; scalar_t__ tlanFullDuplex; int * phy; } ;
struct TYPE_4__ {int flags; } ;
typedef TYPE_2__ TLanPrivateInfo ;


 int HZ ;
 int MII_AN_LPA ;
 int MII_GEN_ID_HI ;
 int MII_GEN_ID_LO ;
 int MII_GEN_STS ;
 scalar_t__ MII_GS_LINK ;
 scalar_t__ NAT_SEM_ID1 ;
 scalar_t__ NAT_SEM_ID2 ;
 int TLAN_ADAPTER_UNMANAGED_PHY ;
 scalar_t__ TLAN_CH_PARM ;
 int TLAN_DEBUG_PROBE ;
 int TLAN_HC_GO ;
 int TLAN_HC_INT_ON ;
 int TLAN_HC_REQ_INT ;
 int TLAN_HC_RT ;
 scalar_t__ TLAN_HOST_CMD ;
 int TLAN_LED_LINK ;
 int TLAN_LED_REG ;
 int TLAN_MAX_RX ;
 int TLAN_NET_CMD ;
 int TLAN_NET_CMD_DUPLEX ;
 int TLAN_NET_CMD_NRESET ;
 int TLAN_NET_CMD_NWRAP ;
 int TLAN_NET_MASK ;
 int TLAN_NET_MASK_MASK4 ;
 int TLAN_NET_MASK_MASK5 ;
 int TLAN_NET_MASK_MASK7 ;
 int TLAN_NET_SIO ;
 int TLAN_NET_SIO_MINTEN ;
 scalar_t__ TLAN_PHY_AN_EN_STAT ;
 scalar_t__ TLAN_PHY_DUPLEX_FULL ;
 scalar_t__ TLAN_PHY_SPEED_100 ;
 scalar_t__ TLAN_TC_INTEN ;
 int TLAN_TIMER_FINISH_RESET ;
 int TLAN_TIMER_LINK_BEAT ;
 int TLAN_TLPHY_CTL ;
 int TLAN_TLPHY_PAR ;
 int TLan_DioRead8 (scalar_t__,int ) ;
 int TLan_DioWrite16 (scalar_t__,int ,int) ;
 int TLan_DioWrite8 (scalar_t__,int ,int) ;
 int TLan_MiiReadReg (struct net_device*,int ,int ,scalar_t__*) ;
 int TLan_MiiWriteReg (struct net_device*,int ,int ,scalar_t__) ;
 int TLan_SetMac (struct net_device*,int ,int ) ;
 int TLan_SetMulticastList (struct net_device*) ;
 int TLan_SetTimer (struct net_device*,int,int ) ;
 int debug ;
 int * media ;
 TYPE_2__* netdev_priv (struct net_device*) ;
 int netif_carrier_on (struct net_device*) ;
 int outb (int,scalar_t__) ;
 int outl (int,scalar_t__) ;
 int printk (char*,...) ;
 int udelay (int) ;

__attribute__((used)) static void
TLan_FinishReset( struct net_device *dev )
{
 TLanPrivateInfo *priv = netdev_priv(dev);
 u8 data;
 u32 phy;
 u8 sio;
 u16 status;
 u16 partner;
 u16 tlphy_ctl;
 u16 tlphy_par;
 u16 tlphy_id1, tlphy_id2;
 int i;

 phy = priv->phy[priv->phyNum];

 data = TLAN_NET_CMD_NRESET | TLAN_NET_CMD_NWRAP;
 if ( priv->tlanFullDuplex ) {
  data |= TLAN_NET_CMD_DUPLEX;
 }
 TLan_DioWrite8( dev->base_addr, TLAN_NET_CMD, data );
 data = TLAN_NET_MASK_MASK4 | TLAN_NET_MASK_MASK5;
 if ( priv->phyNum == 0 ) {
  data |= TLAN_NET_MASK_MASK7;
 }
 TLan_DioWrite8( dev->base_addr, TLAN_NET_MASK, data );
 TLan_DioWrite16( dev->base_addr, TLAN_MAX_RX, ((1536)+7)&~7 );
 TLan_MiiReadReg( dev, phy, MII_GEN_ID_HI, &tlphy_id1 );
 TLan_MiiReadReg( dev, phy, MII_GEN_ID_LO, &tlphy_id2 );

 if ( ( priv->adapter->flags & TLAN_ADAPTER_UNMANAGED_PHY ) ||
      ( priv->aui ) ) {
  status = MII_GS_LINK;
  printk( "TLAN:  %s: Link forced.\n", dev->name );
 } else {
  TLan_MiiReadReg( dev, phy, MII_GEN_STS, &status );
  udelay( 1000 );
  TLan_MiiReadReg( dev, phy, MII_GEN_STS, &status );
  if ( (status & MII_GS_LINK) &&

   (tlphy_id1 == NAT_SEM_ID1) &&
   (tlphy_id2 == NAT_SEM_ID2) ) {
   TLan_MiiReadReg( dev, phy, MII_AN_LPA, &partner );
   TLan_MiiReadReg( dev, phy, TLAN_TLPHY_PAR, &tlphy_par );

   printk( "TLAN: %s: Link active with ", dev->name );
   if (!(tlphy_par & TLAN_PHY_AN_EN_STAT)) {
           printk( "forced 10%sMbps %s-Duplex\n",
      tlphy_par & TLAN_PHY_SPEED_100 ? "" : "0",
      tlphy_par & TLAN_PHY_DUPLEX_FULL ? "Full" : "Half");
   } else {
    printk( "AutoNegotiation enabled, at 10%sMbps %s-Duplex\n",
     tlphy_par & TLAN_PHY_SPEED_100 ? "" : "0",
     tlphy_par & TLAN_PHY_DUPLEX_FULL ? "Full" : "Half");
    printk("TLAN: Partner capability: ");
     for (i = 5; i <= 10; i++)
      if (partner & (1<<i))
       printk("%s",media[i-5]);
    printk("\n");
   }

   TLan_DioWrite8( dev->base_addr, TLAN_LED_REG, TLAN_LED_LINK );






  } else if (status & MII_GS_LINK) {
   printk( "TLAN: %s: Link active\n", dev->name );
   TLan_DioWrite8( dev->base_addr, TLAN_LED_REG, TLAN_LED_LINK );
  }
 }

 if ( priv->phyNum == 0 ) {
         TLan_MiiReadReg( dev, phy, TLAN_TLPHY_CTL, &tlphy_ctl );
         tlphy_ctl |= TLAN_TC_INTEN;
         TLan_MiiWriteReg( dev, phy, TLAN_TLPHY_CTL, tlphy_ctl );
         sio = TLan_DioRead8( dev->base_addr, TLAN_NET_SIO );
         sio |= TLAN_NET_SIO_MINTEN;
         TLan_DioWrite8( dev->base_addr, TLAN_NET_SIO, sio );
 }

 if ( status & MII_GS_LINK ) {
  TLan_SetMac( dev, 0, dev->dev_addr );
  priv->phyOnline = 1;
  outb( ( TLAN_HC_INT_ON >> 8 ), dev->base_addr + TLAN_HOST_CMD + 1 );
  if ( debug >= 1 && debug != TLAN_DEBUG_PROBE ) {
   outb( ( TLAN_HC_REQ_INT >> 8 ), dev->base_addr + TLAN_HOST_CMD + 1 );
  }
  outl( priv->rxListDMA, dev->base_addr + TLAN_CH_PARM );
  outl( TLAN_HC_GO | TLAN_HC_RT, dev->base_addr + TLAN_HOST_CMD );
  netif_carrier_on(dev);
 } else {
  printk( "TLAN: %s: Link inactive, will retry in 10 secs...\n",
   dev->name );
  TLan_SetTimer( dev, (10*HZ), TLAN_TIMER_FINISH_RESET );
  return;
 }
 TLan_SetMulticastList(dev);

}
