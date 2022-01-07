
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct net_device {int base_addr; int name; } ;
struct TYPE_8__ {int* raw; } ;
struct TYPE_9__ {int length; TYPE_2__ data; int command; } ;
typedef TYPE_3__ pcb_struct ;
struct TYPE_7__ {scalar_t__ direction; } ;
struct TYPE_10__ {int hcr_val; scalar_t__ send_pcb_semaphore; int lock; TYPE_1__ current_dma; scalar_t__ dmaing; } ;
typedef TYPE_4__ elp_device ;




 int GET_ASF (int ) ;
 int HZ ;
 int check_3c505_dma (struct net_device*) ;
 int elp_debug ;
 int inb_status (int ) ;
 int jiffies ;
 TYPE_4__* netdev_priv (struct net_device*) ;
 int outb_command (int,int ) ;
 int outb_control (int,struct net_device*) ;
 int pr_debug (char*,int ,...) ;
 scalar_t__ send_pcb_fast (int ,int) ;
 scalar_t__ send_pcb_slow (int ,int ) ;
 int set_hsf (struct net_device*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ test_and_set_bit (int,scalar_t__*) ;
 scalar_t__ time_before (int,unsigned long) ;

__attribute__((used)) static bool send_pcb(struct net_device *dev, pcb_struct * pcb)
{
 int i;
 unsigned long timeout;
 elp_device *adapter = netdev_priv(dev);
 unsigned long flags;

 check_3c505_dma(dev);

 if (adapter->dmaing && adapter->current_dma.direction == 0)
  return 0;


 if (test_and_set_bit(1, &adapter->send_pcb_semaphore)) {
  if (elp_debug >= 3) {
   pr_debug("%s: send_pcb entered while threaded\n", dev->name);
  }
  return 0;
 }





 set_hsf(dev, 0);

 if (send_pcb_slow(dev->base_addr, pcb->command))
  goto abort;

 spin_lock_irqsave(&adapter->lock, flags);

 if (send_pcb_fast(dev->base_addr, pcb->length))
  goto sti_abort;

 for (i = 0; i < pcb->length; i++) {
  if (send_pcb_fast(dev->base_addr, pcb->data.raw[i]))
   goto sti_abort;
 }

 outb_control(adapter->hcr_val | 3, dev);
 outb_command(2 + pcb->length, dev->base_addr);


 spin_unlock_irqrestore(&adapter->lock, flags);

 for (timeout = jiffies + 5*HZ/100; time_before(jiffies, timeout);) {
  switch (GET_ASF(dev->base_addr)) {
  case 129:
   adapter->send_pcb_semaphore = 0;
   return 1;

  case 128:



   goto abort;
  }
 }

 if (elp_debug >= 1)
  pr_debug("%s: timeout waiting for PCB acknowledge (status %02x)\n",
   dev->name, inb_status(dev->base_addr));
 goto abort;

      sti_abort:
 spin_unlock_irqrestore(&adapter->lock, flags);
      abort:
 adapter->send_pcb_semaphore = 0;
 return 0;
}
