
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipw_hardware {int to_setup; int lock; scalar_t__ shutting_down; } ;


 int PRIO_SETUP ;
 int get_current_packet_priority (struct ipw_hardware*) ;
 int get_packets_from_hw (struct ipw_hardware*) ;
 int ipw_send_setup_packet (struct ipw_hardware*) ;
 int ipw_setup_hardware (struct ipw_hardware*) ;
 int send_pending_packet (struct ipw_hardware*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void ipwireless_do_tasklet(unsigned long hw_)
{
 struct ipw_hardware *hw = (struct ipw_hardware *) hw_;
 unsigned long flags;

 spin_lock_irqsave(&hw->lock, flags);
 if (hw->shutting_down) {
  spin_unlock_irqrestore(&hw->lock, flags);
  return;
 }

 if (hw->to_setup == 1) {



  hw->to_setup = 2;
  spin_unlock_irqrestore(&hw->lock, flags);

  ipw_setup_hardware(hw);
  ipw_send_setup_packet(hw);

  send_pending_packet(hw, PRIO_SETUP + 1);
  get_packets_from_hw(hw);
 } else {
  int priority_limit = get_current_packet_priority(hw);
  int again;

  spin_unlock_irqrestore(&hw->lock, flags);

  do {
   again = send_pending_packet(hw, priority_limit);
   again |= get_packets_from_hw(hw);
  } while (again);
 }
}
