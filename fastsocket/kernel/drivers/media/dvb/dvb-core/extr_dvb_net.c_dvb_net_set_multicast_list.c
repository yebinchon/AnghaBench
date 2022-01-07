
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct dvb_net_priv {int set_multicast_list_wq; } ;


 struct dvb_net_priv* netdev_priv (struct net_device*) ;
 int schedule_work (int *) ;

__attribute__((used)) static void dvb_net_set_multicast_list (struct net_device *dev)
{
 struct dvb_net_priv *priv = netdev_priv(dev);
 schedule_work(&priv->set_multicast_list_wq);
}
