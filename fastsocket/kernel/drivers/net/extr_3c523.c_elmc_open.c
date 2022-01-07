
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int irq; int name; } ;


 int IRQF_SAMPLE_RANDOM ;
 int IRQF_SHARED ;
 int alloc586 (struct net_device*) ;
 int elmc_id_attn586 () ;
 int elmc_id_reset586 () ;
 int elmc_interrupt ;
 int init586 (struct net_device*) ;
 int netif_start_queue (struct net_device*) ;
 int pr_err (char*,int ,int ) ;
 int request_irq (int ,int *,int,int ,struct net_device*) ;
 int startrecv586 (struct net_device*) ;

__attribute__((used)) static int elmc_open(struct net_device *dev)
{
 int ret;

 elmc_id_attn586();

 ret = request_irq(dev->irq, &elmc_interrupt, IRQF_SHARED | IRQF_SAMPLE_RANDOM,
     dev->name, dev);
 if (ret) {
  pr_err("%s: couldn't get irq %d\n", dev->name, dev->irq);
  elmc_id_reset586();
  return ret;
 }
 alloc586(dev);
 init586(dev);
 startrecv586(dev);
 netif_start_queue(dev);
 return 0;
}
