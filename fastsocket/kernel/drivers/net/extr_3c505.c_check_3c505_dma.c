
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct net_device {int dma; int name; } ;
struct TYPE_4__ {scalar_t__ direction; scalar_t__ start_time; } ;
struct TYPE_5__ {int hcr_val; int lock; scalar_t__ rx_active; scalar_t__ busy; scalar_t__ dmaing; TYPE_1__ current_dma; } ;
typedef TYPE_2__ elp_device ;


 int DIR ;
 int DMAE ;
 int TCEN ;
 unsigned long claim_dma_lock () ;
 int disable_dma (int ) ;
 int get_dma_residue (int ) ;
 int jiffies ;
 TYPE_2__* netdev_priv (struct net_device*) ;
 int outb_control (int,struct net_device*) ;
 int pr_err (char*,int ,char*,int ) ;
 int release_dma_lock (unsigned long) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ time_after (int ,scalar_t__) ;

__attribute__((used)) static inline void check_3c505_dma(struct net_device *dev)
{
 elp_device *adapter = netdev_priv(dev);
 if (adapter->dmaing && time_after(jiffies, adapter->current_dma.start_time + 10)) {
  unsigned long flags, f;
  pr_err("%s: DMA %s timed out, %d bytes left\n", dev->name,
   adapter->current_dma.direction ? "download" : "upload",
   get_dma_residue(dev->dma));
  spin_lock_irqsave(&adapter->lock, flags);
  adapter->dmaing = 0;
  adapter->busy = 0;

  f=claim_dma_lock();
  disable_dma(dev->dma);
  release_dma_lock(f);

  if (adapter->rx_active)
   adapter->rx_active--;
  outb_control(adapter->hcr_val & ~(DMAE | TCEN | DIR), dev);
  spin_unlock_irqrestore(&adapter->lock, flags);
 }
}
