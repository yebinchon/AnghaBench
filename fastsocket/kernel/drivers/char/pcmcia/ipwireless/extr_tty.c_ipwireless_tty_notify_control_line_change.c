
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipw_tty {unsigned int control_lines; scalar_t__ linux_tty; } ;


 unsigned int IPW_CONTROL_LINE_DCD ;
 int tty_hangup (scalar_t__) ;

void
ipwireless_tty_notify_control_line_change(struct ipw_tty *tty,
       unsigned int channel_idx,
       unsigned int control_lines,
       unsigned int changed_mask)
{
 unsigned int old_control_lines = tty->control_lines;

 tty->control_lines = (tty->control_lines & ~changed_mask)
  | (control_lines & changed_mask);





 if ((old_control_lines & IPW_CONTROL_LINE_DCD)
   && !(tty->control_lines & IPW_CONTROL_LINE_DCD)
   && tty->linux_tty) {
  tty_hangup(tty->linux_tty);
 }
}
