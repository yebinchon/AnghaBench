
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct dvb_net_priv {size_t multi_num; int * multi_macs; } ;
struct dev_mc_list {int dmi_addr; } ;


 size_t DVB_NET_MULTICAST_MAX ;
 int ENOMEM ;
 int memcpy (int ,int ,int) ;
 struct dvb_net_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static int dvb_set_mc_filter (struct net_device *dev, struct dev_mc_list *mc)
{
 struct dvb_net_priv *priv = netdev_priv(dev);

 if (priv->multi_num == DVB_NET_MULTICAST_MAX)
  return -ENOMEM;

 memcpy(priv->multi_macs[priv->multi_num], mc->dmi_addr, 6);

 priv->multi_num++;
 return 0;
}
