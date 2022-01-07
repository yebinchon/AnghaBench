
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int tx_packets; } ;
struct net_device {TYPE_1__ stats; } ;
struct at91_priv {scalar_t__ tx_next; scalar_t__ tx_echo; } ;


 int AT91_IDR ;
 scalar_t__ AT91_MB_TX_FIRST ;
 int AT91_MSR (unsigned int) ;
 int AT91_MSR_MABT ;
 int AT91_MSR_MRDY ;
 int AT91_NEXT_MASK ;
 int at91_read (struct at91_priv*,int ) ;
 int at91_write (struct at91_priv*,int ,int) ;
 int can_get_echo_skb (struct net_device*,scalar_t__) ;
 unsigned int get_tx_echo_mb (struct at91_priv*) ;
 scalar_t__ likely (int) ;
 struct at91_priv* netdev_priv (struct net_device*) ;
 int netif_wake_queue (struct net_device*) ;

__attribute__((used)) static void at91_irq_tx(struct net_device *dev, u32 reg_sr)
{
 struct at91_priv *priv = netdev_priv(dev);
 u32 reg_msr;
 unsigned int mb;



 for ( ; (priv->tx_next - priv->tx_echo) > 0; priv->tx_echo++) {
  mb = get_tx_echo_mb(priv);


  if (!(reg_sr & (1 << mb)))
   break;


  at91_write(priv, AT91_IDR, 1 << mb);







  reg_msr = at91_read(priv, AT91_MSR(mb));
  if (likely(reg_msr & AT91_MSR_MRDY &&
      ~reg_msr & AT91_MSR_MABT)) {

   can_get_echo_skb(dev, mb - AT91_MB_TX_FIRST);
   dev->stats.tx_packets++;
  }
 }






 if ((priv->tx_next & AT91_NEXT_MASK) != 0 ||
     (priv->tx_echo & AT91_NEXT_MASK) == 0)
  netif_wake_queue(dev);
}
