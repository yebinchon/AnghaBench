
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int mbit; scalar_t__ full; int giga; scalar_t__ isup; } ;
struct s6gmac {int tx_chan; int tx_dma; scalar_t__ reg; TYPE_1__ link; struct phy_device* phydev; } ;
struct phy_device {int speed; scalar_t__ duplex; scalar_t__ link; } ;
struct net_device {int dummy; } ;


 scalar_t__ S6_GMAC_FIFOCONF5 ;
 int S6_GMAC_FIFOCONF5_CFGBYTM ;
 scalar_t__ S6_GMAC_MACCONF2 ;
 int S6_GMAC_MACCONF2_FULL ;
 int S6_GMAC_MACCONF2_IFMODE ;
 int S6_GMAC_MACCONF2_IFMODE_BYTE ;
 int S6_GMAC_MACCONF2_IFMODE_MASK ;
 int S6_GMAC_MACCONF2_IFMODE_NIBBLE ;
 struct s6gmac* netdev_priv (struct net_device*) ;
 int netif_carrier_off (struct net_device*) ;
 int netif_tx_disable (struct net_device*) ;
 int netif_wake_queue (struct net_device*) ;
 int phy_print_status (struct phy_device*) ;
 int readl (scalar_t__) ;
 int s6dmac_fifo_full (int ,int ) ;
 int s6gmac_linkisup (struct net_device*,int) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void s6gmac_adjust_link(struct net_device *dev)
{
 struct s6gmac *pd = netdev_priv(dev);
 struct phy_device *phydev = pd->phydev;
 if (pd->link.isup &&
   (!phydev->link ||
   (pd->link.mbit != phydev->speed) ||
   (pd->link.full != phydev->duplex))) {
  pd->link.isup = 0;
  netif_tx_disable(dev);
  if (!phydev->link) {
   netif_carrier_off(dev);
   phy_print_status(phydev);
  }
 }
 if (!pd->link.isup && phydev->link) {
  if (pd->link.full != phydev->duplex) {
   u32 maccfg = readl(pd->reg + S6_GMAC_MACCONF2);
   if (phydev->duplex)
    maccfg |= 1 << S6_GMAC_MACCONF2_FULL;
   else
    maccfg &= ~(1 << S6_GMAC_MACCONF2_FULL);
   writel(maccfg, pd->reg + S6_GMAC_MACCONF2);
  }

  if (pd->link.giga != (phydev->speed == 1000)) {
   u32 fifocfg = readl(pd->reg + S6_GMAC_FIFOCONF5);
   u32 maccfg = readl(pd->reg + S6_GMAC_MACCONF2);
   maccfg &= ~(S6_GMAC_MACCONF2_IFMODE_MASK
         << S6_GMAC_MACCONF2_IFMODE);
   if (phydev->speed == 1000) {
    fifocfg |= 1 << S6_GMAC_FIFOCONF5_CFGBYTM;
    maccfg |= S6_GMAC_MACCONF2_IFMODE_BYTE
        << S6_GMAC_MACCONF2_IFMODE;
   } else {
    fifocfg &= ~(1 << S6_GMAC_FIFOCONF5_CFGBYTM);
    maccfg |= S6_GMAC_MACCONF2_IFMODE_NIBBLE
        << S6_GMAC_MACCONF2_IFMODE;
   }
   writel(fifocfg, pd->reg + S6_GMAC_FIFOCONF5);
   writel(maccfg, pd->reg + S6_GMAC_MACCONF2);
  }

  if (!s6dmac_fifo_full(pd->tx_dma, pd->tx_chan))
   netif_wake_queue(dev);
  s6gmac_linkisup(dev, 1);
 }
}
