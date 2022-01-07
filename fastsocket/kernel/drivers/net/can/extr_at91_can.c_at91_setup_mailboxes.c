
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct at91_priv {scalar_t__ rx_next; scalar_t__ tx_echo; scalar_t__ tx_next; } ;


 int AT91_MB_MODE_RX ;
 int AT91_MB_MODE_RX_OVRWR ;
 int AT91_MB_MODE_TX ;
 unsigned int AT91_MB_RX_FIRST ;
 unsigned int AT91_MB_RX_LAST ;
 unsigned int AT91_MB_TX_FIRST ;
 unsigned int AT91_MB_TX_LAST ;
 struct at91_priv* netdev_priv (struct net_device*) ;
 int set_mb_mode (struct at91_priv*,unsigned int,int ) ;
 int set_mb_mode_prio (struct at91_priv*,unsigned int,int ,int ) ;

__attribute__((used)) static void at91_setup_mailboxes(struct net_device *dev)
{
 struct at91_priv *priv = netdev_priv(dev);
 unsigned int i;






 for (i = AT91_MB_RX_FIRST; i < AT91_MB_RX_LAST; i++)
  set_mb_mode(priv, i, AT91_MB_MODE_RX);
 set_mb_mode(priv, AT91_MB_RX_LAST, AT91_MB_MODE_RX_OVRWR);


 for (i = AT91_MB_TX_FIRST; i <= AT91_MB_TX_LAST; i++)
  set_mb_mode_prio(priv, i, AT91_MB_MODE_TX, 0);


 priv->tx_next = priv->tx_echo = priv->rx_next = 0;
}
