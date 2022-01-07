
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uml_net_private {scalar_t__ user; } ;
struct net_device {int dummy; } ;
struct mcast_init {int ttl; int port; int addr; } ;
struct mcast_data {int ttl; int port; int addr; struct net_device* dev; } ;


 struct uml_net_private* netdev_priv (struct net_device*) ;
 int printk (char*,int ,int ,int ) ;

__attribute__((used)) static void mcast_init(struct net_device *dev, void *data)
{
 struct uml_net_private *pri;
 struct mcast_data *dpri;
 struct mcast_init *init = data;

 pri = netdev_priv(dev);
 dpri = (struct mcast_data *) pri->user;
 dpri->addr = init->addr;
 dpri->port = init->port;
 dpri->ttl = init->ttl;
 dpri->dev = dev;

 printk("mcast backend multicast address: %s:%u, TTL:%u\n",
        dpri->addr, dpri->port, dpri->ttl);
}
