
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipw_tx_packet {int queue; } ;
struct ipw_hardware {int lock; int tx_queued; int * tx_queue; } ;


 int flush_packets_to_hw (struct ipw_hardware*) ;
 int list_add_tail (int *,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void send_packet(struct ipw_hardware *hw, int priority,
   struct ipw_tx_packet *packet)
{
 unsigned long flags;

 spin_lock_irqsave(&hw->lock, flags);
 list_add_tail(&packet->queue, &hw->tx_queue[priority]);
 hw->tx_queued++;
 spin_unlock_irqrestore(&hw->lock, flags);

 flush_packets_to_hw(hw);
}
