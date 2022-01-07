
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipw_hardware {int lock; } ;


 int get_current_packet_priority (struct ipw_hardware*) ;
 scalar_t__ send_pending_packet (struct ipw_hardware*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void flush_packets_to_hw(struct ipw_hardware *hw)
{
 int priority_limit;
 unsigned long flags;

 spin_lock_irqsave(&hw->lock, flags);
 priority_limit = get_current_packet_priority(hw);
 spin_unlock_irqrestore(&hw->lock, flags);

 while (send_pending_packet(hw, priority_limit));
}
