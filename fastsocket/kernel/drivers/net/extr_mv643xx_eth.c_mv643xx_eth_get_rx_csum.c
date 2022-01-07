
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct mv643xx_eth_private {int dummy; } ;


 int PORT_CONFIG ;
 struct mv643xx_eth_private* netdev_priv (struct net_device*) ;
 int rdlp (struct mv643xx_eth_private*,int ) ;

__attribute__((used)) static u32
mv643xx_eth_get_rx_csum(struct net_device *dev)
{
 struct mv643xx_eth_private *mp = netdev_priv(dev);

 return !!(rdlp(mp, PORT_CONFIG) & 0x02000000);
}
