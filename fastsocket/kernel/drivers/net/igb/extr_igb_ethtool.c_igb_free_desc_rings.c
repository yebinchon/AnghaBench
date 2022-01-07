
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct igb_adapter {int test_rx_ring; int test_tx_ring; } ;


 int igb_free_rx_resources (int *) ;
 int igb_free_tx_resources (int *) ;

__attribute__((used)) static void igb_free_desc_rings(struct igb_adapter *adapter)
{
 igb_free_tx_resources(&adapter->test_tx_ring);
 igb_free_rx_resources(&adapter->test_rx_ring);
}
