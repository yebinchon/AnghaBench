
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int sa_data; } ;
struct net_device {int addr_len; int dev_addr; } ;
struct dvb_net_priv {int restart_net_feed_wq; } ;


 int memcpy (int ,int ,int ) ;
 struct dvb_net_priv* netdev_priv (struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;
 int schedule_work (int *) ;

__attribute__((used)) static int dvb_net_set_mac (struct net_device *dev, void *p)
{
 struct dvb_net_priv *priv = netdev_priv(dev);
 struct sockaddr *addr=p;

 memcpy(dev->dev_addr, addr->sa_data, dev->addr_len);

 if (netif_running(dev))
  schedule_work(&priv->restart_net_feed_wq);

 return 0;
}
