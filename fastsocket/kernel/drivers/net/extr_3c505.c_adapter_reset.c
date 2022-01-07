
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int name; int base_addr; } ;
struct TYPE_3__ {unsigned char hcr_val; int tx_pcb; } ;
typedef TYPE_1__ elp_device ;


 int ACRF ;
 unsigned char ATTN ;
 unsigned char DIR ;
 unsigned char FLSH ;
 int HSF_PCB_NAK ;
 int HZ ;
 int inb_command (int ) ;
 int inb_status (int ) ;
 int jiffies ;
 int mdelay (int) ;
 TYPE_1__* netdev_priv (struct net_device*) ;
 int outb_control (unsigned char,struct net_device*) ;
 int pr_err (char*,int ) ;
 int set_hsf (struct net_device*,int ) ;
 int start_receive (struct net_device*,int *) ;
 scalar_t__ time_before_eq (int,unsigned long) ;

__attribute__((used)) static inline void adapter_reset(struct net_device *dev)
{
 unsigned long timeout;
 elp_device *adapter = netdev_priv(dev);
 unsigned char orig_hcr = adapter->hcr_val;

 outb_control(0, dev);

 if (inb_status(dev->base_addr) & ACRF) {
  do {
   inb_command(dev->base_addr);
   timeout = jiffies + 2*HZ/100;
   while (time_before_eq(jiffies, timeout) && !(inb_status(dev->base_addr) & ACRF));
  } while (inb_status(dev->base_addr) & ACRF);
  set_hsf(dev, HSF_PCB_NAK);
 }
 outb_control(adapter->hcr_val | ATTN | DIR, dev);
 mdelay(10);
 outb_control(adapter->hcr_val & ~ATTN, dev);
 mdelay(10);
 outb_control(adapter->hcr_val | FLSH, dev);
 mdelay(10);
 outb_control(adapter->hcr_val & ~FLSH, dev);
 mdelay(10);

 outb_control(orig_hcr, dev);
 if (!start_receive(dev, &adapter->tx_pcb))
  pr_err("%s: start receive command failed\n", dev->name);
}
