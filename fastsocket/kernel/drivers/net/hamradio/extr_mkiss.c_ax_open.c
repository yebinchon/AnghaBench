
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int mtu; } ;
struct mkiss {int mtu; unsigned long buffsize; int flags; int * rbuff; int buflock; scalar_t__ xleft; scalar_t__ rcount; int * xbuff; int * tty; } ;


 int AXF_INUSE ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int kfree (int *) ;
 void* kmalloc (unsigned long,int ) ;
 struct mkiss* netdev_priv (struct net_device*) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int ax_open(struct net_device *dev)
{
 struct mkiss *ax = netdev_priv(dev);
 unsigned long len;

 if (ax->tty == ((void*)0))
  return -ENODEV;







 len = dev->mtu * 2;






 if (len < 576 * 2)
  len = 576 * 2;

 if ((ax->rbuff = kmalloc(len + 4, GFP_KERNEL)) == ((void*)0))
  goto norbuff;

 if ((ax->xbuff = kmalloc(len + 4, GFP_KERNEL)) == ((void*)0))
  goto noxbuff;

 ax->mtu = dev->mtu + 73;
 ax->buffsize = len;
 ax->rcount = 0;
 ax->xleft = 0;

 ax->flags &= (1 << AXF_INUSE);

 spin_lock_init(&ax->buflock);

 return 0;

noxbuff:
 kfree(ax->rbuff);

norbuff:
 return -ENOMEM;
}
