
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pch_gbe_adapter {void* tx_ring; void* rx_ring; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int kfree (void*) ;
 void* kzalloc (int,int ) ;

__attribute__((used)) static int pch_gbe_alloc_queues(struct pch_gbe_adapter *adapter)
{
 adapter->tx_ring = kzalloc(sizeof(*adapter->tx_ring), GFP_KERNEL);
 if (!adapter->tx_ring)
  return -ENOMEM;

 adapter->rx_ring = kzalloc(sizeof(*adapter->rx_ring), GFP_KERNEL);
 if (!adapter->rx_ring) {
  kfree(adapter->tx_ring);
  return -ENOMEM;
 }
 return 0;
}
