
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipw_rx_packet {int queue; } ;
struct ipw_hardware {int rx_pool_size; int rx_pool; } ;


 int kfree (struct ipw_rx_packet*) ;
 int list_add (int *,int *) ;

__attribute__((used)) static void pool_free(struct ipw_hardware *hw, struct ipw_rx_packet *packet)
{
 if (hw->rx_pool_size > 6)
  kfree(packet);
 else {
  hw->rx_pool_size++;
  list_add(&packet->queue, &hw->rx_pool);
 }
}
