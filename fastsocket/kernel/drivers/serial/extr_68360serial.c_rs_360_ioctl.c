
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct tty_struct {int flags; int name; scalar_t__ driver_data; } ;
struct serial_icounter_struct {int dcd; int rng; int dsr; int cts; } ;
struct file {int dummy; } ;
struct async_icount {int dcd; int rng; int dsr; int cts; } ;
struct TYPE_9__ {TYPE_1__* state; int delta_msr_wait; } ;
typedef TYPE_2__ ser_info_t ;
struct TYPE_8__ {struct async_icount icount; } ;


 int EINTR ;
 int EIO ;
 int ENODEV ;
 int ENOIOCTLCMD ;
 int ERESTARTSYS ;





 unsigned long TIOCM_CD ;
 unsigned long TIOCM_CTS ;
 unsigned long TIOCM_DSR ;
 unsigned long TIOCM_RNG ;


 int TTY_IO_ERROR ;
 int begin_break (TYPE_2__*) ;
 struct async_icount cprev ;
 int current ;
 int end_break (TYPE_2__*) ;
 int get_lsr_info (TYPE_2__*,unsigned int*) ;
 int interruptible_sleep_on (int *) ;
 int local_irq_disable () ;
 int local_irq_enable () ;
 int put_user (int ,int *) ;
 int send_break (TYPE_2__*,unsigned long) ;
 scalar_t__ serial_paranoia_check (TYPE_2__*,int ,char*) ;
 int signal_pending (int ) ;
 int tty_check_change (struct tty_struct*) ;
 int tty_wait_until_sent (struct tty_struct*,int ) ;

__attribute__((used)) static int rs_360_ioctl(struct tty_struct *tty, struct file * file,
      unsigned int cmd, unsigned long arg)
{
 int error;
 ser_info_t *info = (ser_info_t *)tty->driver_data;
 int retval;
 struct async_icount cnow;

 struct serial_icounter_struct *p_cuser;

 if (serial_paranoia_check(info, tty->name, "rs_ioctl"))
  return -ENODEV;

 if ((cmd != 130) && (cmd != 131)) {
  if (tty->flags & (1 << TTY_IO_ERROR))
      return -EIO;
 }

 switch (cmd) {
  case 134:
   retval = tty_check_change(tty);
   if (retval)
    return retval;
   tty_wait_until_sent(tty, 0);
   if (signal_pending(current))
    return -EINTR;
   if (!arg) {
    send_break(info, 250);
    if (signal_pending(current))
     return -EINTR;
   }
   return 0;
  case 133:
   retval = tty_check_change(tty);
   if (retval)
    return retval;
   tty_wait_until_sent(tty, 0);
   if (signal_pending(current))
    return -EINTR;
   send_break(info, arg ? arg*100 : 250);
   if (signal_pending(current))
    return -EINTR;
   return 0;
  case 129:
   retval = tty_check_change(tty);
   if (retval)
    return retval;
   tty_wait_until_sent(tty, 0);
   begin_break(info);
   return 0;
  case 132:
   retval = tty_check_change(tty);
   if (retval)
    return retval;
   end_break(info);
   return 0;
   case 130:
   return 0;
  case 131:
   local_irq_disable();
   cnow = info->state->icount;
   local_irq_enable();
   p_cuser = (struct serial_icounter_struct *) arg;
   put_user(cnow.cts, &p_cuser->cts);
   put_user(cnow.dsr, &p_cuser->dsr);
   put_user(cnow.rng, &p_cuser->rng);
   put_user(cnow.dcd, &p_cuser->dcd);
   return 0;

  default:
   return -ENOIOCTLCMD;
  }
 return 0;
}
