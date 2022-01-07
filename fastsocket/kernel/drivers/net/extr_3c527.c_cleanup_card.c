
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int base_addr; int irq; } ;
struct mc32_local {unsigned int slot; } ;


 int MC32_IO_EXTENT ;
 int free_irq (int ,struct net_device*) ;
 int mca_mark_as_unused (unsigned int) ;
 int mca_set_adapter_name (unsigned int,int *) ;
 struct mc32_local* netdev_priv (struct net_device*) ;
 int release_region (int ,int ) ;

__attribute__((used)) static void cleanup_card(struct net_device *dev)
{
 struct mc32_local *lp = netdev_priv(dev);
 unsigned slot = lp->slot;
 mca_mark_as_unused(slot);
 mca_set_adapter_name(slot, ((void*)0));
 free_irq(dev->irq, dev);
 release_region(dev->base_addr, MC32_IO_EXTENT);
}
