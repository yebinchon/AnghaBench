
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct hdlc_device {int dummy; } ;
struct TYPE_2__ {void* priv; } ;


 struct net_device* alloc_netdev (int,char*,int ) ;
 TYPE_1__* dev_to_hdlc (struct net_device*) ;
 int hdlc_setup ;

struct net_device *alloc_hdlcdev(void *priv)
{
 struct net_device *dev;
 dev = alloc_netdev(sizeof(struct hdlc_device), "hdlc%d", hdlc_setup);
 if (dev)
  dev_to_hdlc(dev)->priv = priv;
 return dev;
}
