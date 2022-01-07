
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_local {scalar_t__ mca_slot; } ;
struct net_device {int base_addr; int irq; } ;


 int AT1700_IO_EXTENT ;
 int free_irq (int ,int *) ;
 int mca_mark_as_unused (scalar_t__) ;
 struct net_local* netdev_priv (struct net_device*) ;
 int release_region (int ,int ) ;

__attribute__((used)) static void cleanup_card(struct net_device *dev)
{





 free_irq(dev->irq, ((void*)0));
 release_region(dev->base_addr, AT1700_IO_EXTENT);
}
