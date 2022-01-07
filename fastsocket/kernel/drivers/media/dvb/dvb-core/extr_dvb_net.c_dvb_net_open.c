
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct dvb_net_priv {int in_use; } ;


 int dvb_net_feed_start (struct net_device*) ;
 struct dvb_net_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static int dvb_net_open(struct net_device *dev)
{
 struct dvb_net_priv *priv = netdev_priv(dev);

 priv->in_use++;
 dvb_net_feed_start(dev);
 return 0;
}
