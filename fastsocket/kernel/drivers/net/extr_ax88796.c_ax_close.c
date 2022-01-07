
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int irq; int name; } ;
struct ei_device {scalar_t__ mem; } ;
struct ax_device {int mii_timer; scalar_t__ running; TYPE_1__* plat; TYPE_2__* dev; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {int gpoc_val; } ;


 scalar_t__ EI_SHIFT (int) ;
 int ax_ei_close (struct net_device*) ;
 int del_timer_sync (int *) ;
 int dev_dbg (int *,char*,int ) ;
 int ei_outb (int,scalar_t__) ;
 int free_irq (int ,struct net_device*) ;
 struct ei_device* netdev_priv (struct net_device*) ;
 struct ax_device* to_ax_dev (struct net_device*) ;
 int wmb () ;

__attribute__((used)) static int ax_close(struct net_device *dev)
{
 struct ax_device *ax = to_ax_dev(dev);
 struct ei_device *ei_local = netdev_priv(dev);

 dev_dbg(&ax->dev->dev, "%s: close\n", dev->name);



 ei_outb(ax->plat->gpoc_val | (1<<6),
        ei_local->mem + EI_SHIFT(0x17));

 ax->running = 0;
 wmb();

 del_timer_sync(&ax->mii_timer);
 ax_ei_close(dev);

 free_irq(dev->irq, dev);
 return 0;
}
