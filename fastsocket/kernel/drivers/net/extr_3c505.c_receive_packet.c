
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct net_device {int name; int dma; } ;
struct TYPE_4__ {int length; int start_time; struct sk_buff* skb; scalar_t__ direction; int * target; } ;
struct TYPE_5__ {int hcr_val; int busy; scalar_t__ rx_active; TYPE_1__ current_dma; int dmaing; void* dma_buffer; } ;
typedef TYPE_2__ elp_device ;


 int DIR ;
 int DMAE ;
 unsigned long MAX_DMA_ADDRESS ;
 int TCEN ;
 unsigned long claim_dma_lock () ;
 int clear_dma_ff (int ) ;
 struct sk_buff* dev_alloc_skb (int) ;
 int disable_dma (int ) ;
 int elp_debug ;
 int enable_dma (int ) ;
 int isa_virt_to_bus (void*) ;
 int jiffies ;
 TYPE_2__* netdev_priv (struct net_device*) ;
 int outb_control (int,struct net_device*) ;
 int pr_debug (char*,int ) ;
 int pr_err (char*,int ,scalar_t__) ;
 int pr_warning (char*,int ) ;
 int release_dma_lock (unsigned long) ;
 int set_dma_addr (int ,int ) ;
 int set_dma_count (int ,int) ;
 int set_dma_mode (int ,int) ;
 void* skb_put (struct sk_buff*,int) ;
 int skb_reserve (struct sk_buff*,int) ;
 scalar_t__ test_and_set_bit (int ,void*) ;

__attribute__((used)) static void receive_packet(struct net_device *dev, int len)
{
 int rlen;
 elp_device *adapter = netdev_priv(dev);
 void *target;
 struct sk_buff *skb;
 unsigned long flags;

 rlen = (len + 1) & ~1;
 skb = dev_alloc_skb(rlen + 2);

 if (!skb) {
  pr_warning("%s: memory squeeze, dropping packet\n", dev->name);
  target = adapter->dma_buffer;
  adapter->current_dma.target = ((void*)0);

  return;
 }

 skb_reserve(skb, 2);
 target = skb_put(skb, rlen);
 if ((unsigned long)(target + rlen) >= MAX_DMA_ADDRESS) {
  adapter->current_dma.target = target;
  target = adapter->dma_buffer;
 } else {
  adapter->current_dma.target = ((void*)0);
 }


 if (test_and_set_bit(0, (void *) &adapter->dmaing))
  pr_err("%s: rx blocked, DMA in progress, dir %d\n",
   dev->name, adapter->current_dma.direction);

 adapter->current_dma.direction = 0;
 adapter->current_dma.length = rlen;
 adapter->current_dma.skb = skb;
 adapter->current_dma.start_time = jiffies;

 outb_control(adapter->hcr_val | DIR | TCEN | DMAE, dev);

 flags=claim_dma_lock();
 disable_dma(dev->dma);
 clear_dma_ff(dev->dma);
 set_dma_mode(dev->dma, 0x04);
 set_dma_addr(dev->dma, isa_virt_to_bus(target));
 set_dma_count(dev->dma, rlen);
 enable_dma(dev->dma);
 release_dma_lock(flags);

 if (elp_debug >= 3) {
  pr_debug("%s: rx DMA transfer started\n", dev->name);
 }

 if (adapter->rx_active)
  adapter->rx_active--;

 if (!adapter->busy)
  pr_warning("%s: receive_packet called, busy not set.\n", dev->name);
}
