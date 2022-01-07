
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qlcnic_host_tx_ring {int crb_cmd_producer; int producer; } ;


 int writel (int ,int ) ;

inline void qlcnic_update_cmd_producer(struct qlcnic_host_tx_ring *tx_ring)
{
 writel(tx_ring->producer, tx_ring->crb_cmd_producer);
}
