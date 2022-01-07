
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int base_addr; int* dev_addr; int irq; } ;
struct TYPE_2__ {int close; int copy_from_card; int copy_to_card; int reset; int intmask; int status; int command; int owner; } ;
struct arcnet_local {int setup; int card_flags; int setup2; int config; int timeout; int backplane; int card_name; TYPE_1__ hw; } ;


 int ARC_CAN_10MBIT ;
 int BUGMSG (int ,char*,...) ;
 int BUS_ALIGN ;
 int D_NORMAL ;
 int EIO ;
 int ENODEV ;
 int SETCONF ;
 int SET_SUBADR (int ) ;
 int SUB_SETUP1 ;
 int SUB_SETUP2 ;
 int THIS_MODULE ;
 int _COMMAND ;
 int _XREG ;
 int arcnet_interrupt ;
 int * clockrates ;
 int com20020_close ;
 int com20020_command ;
 int com20020_copy_from_card ;
 int com20020_copy_to_card ;
 int com20020_reset ;
 int com20020_setmask ;
 int com20020_status ;
 int free_irq (int ,struct net_device*) ;
 int inb (int) ;
 int mdelay (int) ;
 struct arcnet_local* netdev_priv (struct net_device*) ;
 int outb (int,int ) ;
 scalar_t__ register_netdev (struct net_device*) ;
 scalar_t__ request_irq (int ,int *,int,char*,struct net_device*) ;

int com20020_found(struct net_device *dev, int shared)
{
 struct arcnet_local *lp;
 int ioaddr = dev->base_addr;



 lp = netdev_priv(dev);

 lp->hw.owner = THIS_MODULE;
 lp->hw.command = com20020_command;
 lp->hw.status = com20020_status;
 lp->hw.intmask = com20020_setmask;
 lp->hw.reset = com20020_reset;
 lp->hw.copy_to_card = com20020_copy_to_card;
 lp->hw.copy_from_card = com20020_copy_from_card;
 lp->hw.close = com20020_close;

 if (!dev->dev_addr[0])
  dev->dev_addr[0] = inb(ioaddr + BUS_ALIGN*8);

 SET_SUBADR(SUB_SETUP1);
 outb(lp->setup, _XREG);

 if (lp->card_flags & ARC_CAN_10MBIT)
 {
  SET_SUBADR(SUB_SETUP2);
  outb(lp->setup2, _XREG);


  mdelay(1);
  outb(0x18, _COMMAND);
 }

 lp->config = 0x20 | (lp->timeout << 3) | (lp->backplane << 2) | 1;

 SETCONF;
 outb(dev->dev_addr[0], _XREG);


 if (request_irq(dev->irq, &arcnet_interrupt, shared,
   "arcnet (COM20020)", dev)) {
  BUGMSG(D_NORMAL, "Can't get IRQ %d!\n", dev->irq);
  return -ENODEV;
 }

 dev->base_addr = ioaddr;

 BUGMSG(D_NORMAL, "%s: station %02Xh found at %03lXh, IRQ %d.\n",
        lp->card_name, dev->dev_addr[0], dev->base_addr, dev->irq);

 if (lp->backplane)
  BUGMSG(D_NORMAL, "Using backplane mode.\n");

 if (lp->timeout != 3)
  BUGMSG(D_NORMAL, "Using extended timeout value of %d.\n", lp->timeout);

 BUGMSG(D_NORMAL, "Using CKP %d - data rate %s.\n",
        lp->setup >> 1,
        clockrates[3 - ((lp->setup2 & 0xF0) >> 4) + ((lp->setup & 0x0F) >> 1)]);

 if (register_netdev(dev)) {
  free_irq(dev->irq, dev);
  return -EIO;
 }
 return 0;
}
