
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipw_hardware {int lock; scalar_t__ rx_ready; int blocking_rx; } ;


 int do_receive_packet (struct ipw_hardware*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int get_packets_from_hw(struct ipw_hardware *hw)
{
 int received = 0;
 unsigned long flags;

 spin_lock_irqsave(&hw->lock, flags);
 while (hw->rx_ready && !hw->blocking_rx) {
  received = 1;
  hw->rx_ready--;
  spin_unlock_irqrestore(&hw->lock, flags);

  do_receive_packet(hw);

  spin_lock_irqsave(&hw->lock, flags);
 }
 spin_unlock_irqrestore(&hw->lock, flags);

 return received;
}
