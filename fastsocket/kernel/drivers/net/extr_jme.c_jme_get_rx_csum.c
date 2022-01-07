
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct jme_adapter {int reg_rxmcs; } ;


 int RXMCS_CHECKSUM ;
 struct jme_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static u32
jme_get_rx_csum(struct net_device *netdev)
{
 struct jme_adapter *jme = netdev_priv(netdev);
 return jme->reg_rxmcs & RXMCS_CHECKSUM;
}
