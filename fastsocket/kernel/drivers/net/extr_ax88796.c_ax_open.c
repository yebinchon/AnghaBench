
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct net_device {int name; int irq; } ;
struct ei_device {scalar_t__ mem; } ;
struct TYPE_7__ {unsigned long data; int function; scalar_t__ expires; } ;
struct ax_device {int running; TYPE_3__ mii_timer; TYPE_2__* plat; int irqflags; TYPE_1__* dev; } ;
struct TYPE_6__ {int gpoc_val; } ;
struct TYPE_5__ {int dev; } ;


 scalar_t__ EI_SHIFT (int) ;
 int add_timer (TYPE_3__*) ;
 int ax_ei_interrupt ;
 int ax_ei_open (struct net_device*) ;
 int ax_mii_expiry ;
 int dev_dbg (int *,char*,int ) ;
 int ei_outb (int ,scalar_t__) ;
 int init_timer (TYPE_3__*) ;
 scalar_t__ jiffies ;
 struct ei_device* netdev_priv (struct net_device*) ;
 int request_irq (int ,int ,int ,int ,struct net_device*) ;
 struct ax_device* to_ax_dev (struct net_device*) ;

__attribute__((used)) static int ax_open(struct net_device *dev)
{
 struct ax_device *ax = to_ax_dev(dev);
 struct ei_device *ei_local = netdev_priv(dev);
 int ret;

 dev_dbg(&ax->dev->dev, "%s: open\n", dev->name);

 ret = request_irq(dev->irq, ax_ei_interrupt, ax->irqflags,
     dev->name, dev);
 if (ret)
  return ret;

 ret = ax_ei_open(dev);
 if (ret)
  return ret;



 ei_outb(ax->plat->gpoc_val, ei_local->mem + EI_SHIFT(0x17));
 ax->running = 1;



 init_timer(&ax->mii_timer);

 ax->mii_timer.expires = jiffies+1;
 ax->mii_timer.data = (unsigned long) dev;
 ax->mii_timer.function = ax_mii_expiry;

 add_timer(&ax->mii_timer);

 return 0;
}
