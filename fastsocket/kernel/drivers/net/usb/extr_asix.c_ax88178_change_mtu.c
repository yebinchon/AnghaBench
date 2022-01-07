
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbnet {int maxpacket; int hard_mtu; } ;
struct net_device {int hard_header_len; int mtu; } ;


 int EDOM ;
 int EINVAL ;
 int ax88178_set_mfb (struct usbnet*) ;
 int devdbg (struct usbnet*,char*,int) ;
 struct usbnet* netdev_priv (struct net_device*) ;

__attribute__((used)) static int ax88178_change_mtu(struct net_device *net, int new_mtu)
{
 struct usbnet *dev = netdev_priv(net);
 int ll_mtu = new_mtu + net->hard_header_len + 4;

 devdbg(dev, "ax88178_change_mtu() new_mtu=%d", new_mtu);

 if (new_mtu <= 0 || ll_mtu > 16384)
  return -EINVAL;

 if ((ll_mtu % dev->maxpacket) == 0)
  return -EDOM;

 net->mtu = new_mtu;
 dev->hard_mtu = net->mtu + net->hard_header_len;
 ax88178_set_mfb(dev);

 return 0;
}
