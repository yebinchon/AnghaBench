
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct x25_asy {unsigned long buffsize; int flags; int * rbuff; int * xbuff; scalar_t__ xleft; scalar_t__ rcount; int * tty; } ;
struct net_device {int mtu; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int LAPB_OK ;
 int SLF_INUSE ;
 int kfree (int *) ;
 void* kmalloc (unsigned long,int ) ;
 int lapb_register (struct net_device*,int *) ;
 struct x25_asy* netdev_priv (struct net_device*) ;
 int netif_start_queue (struct net_device*) ;
 int x25_asy_callbacks ;

__attribute__((used)) static int x25_asy_open(struct net_device *dev)
{
 struct x25_asy *sl = netdev_priv(dev);
 unsigned long len;
 int err;

 if (sl->tty == ((void*)0))
  return -ENODEV;
 len = dev->mtu * 2;

 sl->rbuff = kmalloc(len + 4, GFP_KERNEL);
 if (sl->rbuff == ((void*)0))
  goto norbuff;
 sl->xbuff = kmalloc(len + 4, GFP_KERNEL);
 if (sl->xbuff == ((void*)0))
  goto noxbuff;

 sl->buffsize = len;
 sl->rcount = 0;
 sl->xleft = 0;
 sl->flags &= (1 << SLF_INUSE);

 netif_start_queue(dev);




 err = lapb_register(dev, &x25_asy_callbacks);
 if (err == LAPB_OK)
  return 0;


 kfree(sl->xbuff);
noxbuff:
 kfree(sl->rbuff);
norbuff:
 return -ENOMEM;
}
