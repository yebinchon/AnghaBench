
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int parent; } ;
struct net_device {TYPE_1__ dev; } ;
struct at91_priv {unsigned int rx_next; } ;


 unsigned int AT91_MB_RX_LOW_LAST ;
 int AT91_MB_RX_LOW_MASK ;
 unsigned int AT91_MB_RX_NUM ;
 int AT91_SR ;
 int at91_activate_rx_low (struct at91_priv*) ;
 int at91_activate_rx_mb (struct at91_priv*,unsigned int) ;
 int at91_read (struct at91_priv*,int ) ;
 int at91_read_msg (struct net_device*,unsigned int) ;
 int dev_info (int ,char*) ;
 unsigned int find_next_bit (unsigned long const*,unsigned int,unsigned int) ;
 struct at91_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static int at91_poll_rx(struct net_device *dev, int quota)
{
 struct at91_priv *priv = netdev_priv(dev);
 u32 reg_sr = at91_read(priv, AT91_SR);
 const unsigned long *addr = (unsigned long *)&reg_sr;
 unsigned int mb;
 int received = 0;

 if (priv->rx_next > AT91_MB_RX_LOW_LAST &&
     reg_sr & AT91_MB_RX_LOW_MASK)
  dev_info(dev->dev.parent,
    "order of incoming frames cannot be guaranteed\n");

 again:
 for (mb = find_next_bit(addr, AT91_MB_RX_NUM, priv->rx_next);
      mb < AT91_MB_RX_NUM && quota > 0;
      reg_sr = at91_read(priv, AT91_SR),
      mb = find_next_bit(addr, AT91_MB_RX_NUM, ++priv->rx_next)) {
  at91_read_msg(dev, mb);


  if (mb == AT91_MB_RX_LOW_LAST)

   at91_activate_rx_low(priv);
  else if (mb > AT91_MB_RX_LOW_LAST)

   at91_activate_rx_mb(priv, mb);

  received++;
  quota--;
 }


 if (priv->rx_next > AT91_MB_RX_LOW_LAST &&
     quota > 0 && mb >= AT91_MB_RX_NUM) {
  priv->rx_next = 0;
  goto again;
 }

 return received;
}
