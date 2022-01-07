
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct fec_enet_private {int bd_dma; int full_duplex; int phy_speed; scalar_t__ hwp; struct bufdesc* tx_bd_base; struct bufdesc* rx_bd_base; int ** tx_skbuff; scalar_t__ skb_dirty; scalar_t__ skb_cur; struct bufdesc* cur_rx; struct bufdesc* cur_tx; struct bufdesc* dirty_tx; } ;
struct bufdesc {int cbd_sc; scalar_t__ cbd_bufaddr; } ;


 int BD_ENET_RX_EMPTY ;
 int BD_SC_WRAP ;
 scalar_t__ FEC_ECNTRL ;
 int FEC_ENET_MII ;
 int FEC_ENET_RXF ;
 int FEC_ENET_TXF ;
 scalar_t__ FEC_GRP_HASH_TABLE_HIGH ;
 scalar_t__ FEC_GRP_HASH_TABLE_LOW ;
 scalar_t__ FEC_HASH_TABLE_HIGH ;
 scalar_t__ FEC_HASH_TABLE_LOW ;
 scalar_t__ FEC_IEVENT ;
 scalar_t__ FEC_IMASK ;
 scalar_t__ FEC_MII_SPEED ;
 scalar_t__ FEC_R_BUFF_SIZE ;
 scalar_t__ FEC_R_CNTRL ;
 scalar_t__ FEC_R_DES_ACTIVE ;
 scalar_t__ FEC_R_DES_START ;
 scalar_t__ FEC_X_CNTRL ;
 scalar_t__ FEC_X_DES_START ;
 int OPT_FRAME_SIZE ;
 int PKT_MAXBLR_SIZE ;
 int RX_RING_SIZE ;
 int TX_RING_MOD_MASK ;
 int TX_RING_SIZE ;
 int dev_kfree_skb_any (int *) ;
 struct fec_enet_private* netdev_priv (struct net_device*) ;
 int udelay (int) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void
fec_restart(struct net_device *dev, int duplex)
{
 struct fec_enet_private *fep = netdev_priv(dev);
 struct bufdesc *bdp;
 int i;


 writel(1, fep->hwp + FEC_ECNTRL);
 udelay(10);


 writel(0xffc00000, fep->hwp + FEC_IEVENT);


 writel(0, fep->hwp + FEC_GRP_HASH_TABLE_HIGH);
 writel(0, fep->hwp + FEC_GRP_HASH_TABLE_LOW);

 writel(0, fep->hwp + FEC_HASH_TABLE_HIGH);
 writel(0, fep->hwp + FEC_HASH_TABLE_LOW);



 writel(PKT_MAXBLR_SIZE, fep->hwp + FEC_R_BUFF_SIZE);


 writel(fep->bd_dma, fep->hwp + FEC_R_DES_START);
 writel((unsigned long)fep->bd_dma + sizeof(struct bufdesc) * RX_RING_SIZE,
   fep->hwp + FEC_X_DES_START);

 fep->dirty_tx = fep->cur_tx = fep->tx_bd_base;
 fep->cur_rx = fep->rx_bd_base;


 fep->skb_cur = fep->skb_dirty = 0;
 for (i = 0; i <= TX_RING_MOD_MASK; i++) {
  if (fep->tx_skbuff[i]) {
   dev_kfree_skb_any(fep->tx_skbuff[i]);
   fep->tx_skbuff[i] = ((void*)0);
  }
 }


 bdp = fep->rx_bd_base;
 for (i = 0; i < RX_RING_SIZE; i++) {


  bdp->cbd_sc = BD_ENET_RX_EMPTY;
  bdp++;
 }


 bdp--;
 bdp->cbd_sc |= BD_SC_WRAP;


 bdp = fep->tx_bd_base;
 for (i = 0; i < TX_RING_SIZE; i++) {


  bdp->cbd_sc = 0;
  bdp->cbd_bufaddr = 0;
  bdp++;
 }


 bdp--;
 bdp->cbd_sc |= BD_SC_WRAP;


 if (duplex) {

  writel(OPT_FRAME_SIZE | 0x04, fep->hwp + FEC_R_CNTRL);
  writel(0x04, fep->hwp + FEC_X_CNTRL);
 } else {

  writel(OPT_FRAME_SIZE | 0x06, fep->hwp + FEC_R_CNTRL);
  writel(0x0, fep->hwp + FEC_X_CNTRL);
 }
 fep->full_duplex = duplex;


 writel(fep->phy_speed, fep->hwp + FEC_MII_SPEED);


 writel(2, fep->hwp + FEC_ECNTRL);
 writel(0, fep->hwp + FEC_R_DES_ACTIVE);


 writel(FEC_ENET_TXF | FEC_ENET_RXF | FEC_ENET_MII,
   fep->hwp + FEC_IMASK);
}
