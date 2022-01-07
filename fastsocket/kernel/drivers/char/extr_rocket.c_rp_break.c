
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {struct r_port* driver_data; } ;
struct r_port {int slock; int channel; } ;


 int EINVAL ;
 scalar_t__ rocket_paranoia_check (struct r_port*,char*) ;
 int sClrBreak (int *) ;
 int sSendBreak (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int rp_break(struct tty_struct *tty, int break_state)
{
 struct r_port *info = tty->driver_data;
 unsigned long flags;

 if (rocket_paranoia_check(info, "rp_break"))
  return -EINVAL;

 spin_lock_irqsave(&info->slock, flags);
 if (break_state == -1)
  sSendBreak(&info->channel);
 else
  sClrBreak(&info->channel);
 spin_unlock_irqrestore(&info->slock, flags);
 return 0;
}
