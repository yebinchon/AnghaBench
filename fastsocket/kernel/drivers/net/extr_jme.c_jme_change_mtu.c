
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int features; int mtu; } ;
struct jme_adapter {int old_mtu; int flags; int reg_rxcs; } ;


 int EINVAL ;
 scalar_t__ ETH_HLEN ;
 int IPV6_MIN_MTU ;
 int JME_FLAG_TSO ;
 int JME_FLAG_TXCSUM ;
 scalar_t__ MAX_ETHERNET_JUMBO_PACKET_SIZE ;
 int NETIF_F_HW_CSUM ;
 int NETIF_F_TSO ;
 int NETIF_F_TSO6 ;
 int RXCS_FIFOTHNP ;
 int RXCS_FIFOTHNP_128QW ;
 int RXCS_FIFOTHNP_64QW ;
 int jme_reset_link (struct jme_adapter*) ;
 int jme_restart_rx_engine (struct jme_adapter*) ;
 struct jme_adapter* netdev_priv (struct net_device*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int
jme_change_mtu(struct net_device *netdev, int new_mtu)
{
 struct jme_adapter *jme = netdev_priv(netdev);

 if (new_mtu == jme->old_mtu)
  return 0;

 if (((new_mtu + ETH_HLEN) > MAX_ETHERNET_JUMBO_PACKET_SIZE) ||
  ((new_mtu) < IPV6_MIN_MTU))
  return -EINVAL;

 if (new_mtu > 4000) {
  jme->reg_rxcs &= ~RXCS_FIFOTHNP;
  jme->reg_rxcs |= RXCS_FIFOTHNP_64QW;
  jme_restart_rx_engine(jme);
 } else {
  jme->reg_rxcs &= ~RXCS_FIFOTHNP;
  jme->reg_rxcs |= RXCS_FIFOTHNP_128QW;
  jme_restart_rx_engine(jme);
 }

 if (new_mtu > 1900) {
  netdev->features &= ~(NETIF_F_HW_CSUM |
    NETIF_F_TSO |
    NETIF_F_TSO6);
 } else {
  if (test_bit(JME_FLAG_TXCSUM, &jme->flags))
   netdev->features |= NETIF_F_HW_CSUM;
  if (test_bit(JME_FLAG_TSO, &jme->flags))
   netdev->features |= NETIF_F_TSO | NETIF_F_TSO6;
 }

 netdev->mtu = new_mtu;
 jme_reset_link(jme);

 return 0;
}
