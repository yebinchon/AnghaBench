
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct eth1394_priv {scalar_t__ bc_state; } ;


 scalar_t__ ETHER1394_BC_ERROR ;
 int ether1394_recv_init (struct eth1394_priv*) ;
 struct eth1394_priv* netdev_priv (struct net_device*) ;
 int netif_start_queue (struct net_device*) ;

__attribute__((used)) static int ether1394_open(struct net_device *dev)
{
 struct eth1394_priv *priv = netdev_priv(dev);
 int ret;

 if (priv->bc_state == ETHER1394_BC_ERROR) {
  ret = ether1394_recv_init(priv);
  if (ret)
   return ret;
 }
 netif_start_queue(dev);
 return 0;
}
