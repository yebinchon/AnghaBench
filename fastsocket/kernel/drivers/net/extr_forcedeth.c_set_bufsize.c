
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {scalar_t__ mtu; } ;
struct fe_priv {scalar_t__ rx_buf_sz; } ;


 scalar_t__ ETH_DATA_LEN ;
 scalar_t__ NV_RX_HEADERS ;
 struct fe_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static void set_bufsize(struct net_device *dev)
{
 struct fe_priv *np = netdev_priv(dev);

 if (dev->mtu <= ETH_DATA_LEN)
  np->rx_buf_sz = ETH_DATA_LEN + NV_RX_HEADERS;
 else
  np->rx_buf_sz = dev->mtu + NV_RX_HEADERS;
}
