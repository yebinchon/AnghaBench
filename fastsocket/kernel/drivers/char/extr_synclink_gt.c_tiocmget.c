
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {struct slgt_info* driver_data; } ;
struct slgt_info {int signals; int device_name; int lock; } ;
struct file {int dummy; } ;


 int DBGINFO (char*) ;
 int SerialSignal_CTS ;
 int SerialSignal_DCD ;
 int SerialSignal_DSR ;
 int SerialSignal_DTR ;
 int SerialSignal_RI ;
 int SerialSignal_RTS ;
 unsigned int TIOCM_CAR ;
 unsigned int TIOCM_CTS ;
 unsigned int TIOCM_DSR ;
 unsigned int TIOCM_DTR ;
 unsigned int TIOCM_RNG ;
 unsigned int TIOCM_RTS ;
 int get_signals (struct slgt_info*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int tiocmget(struct tty_struct *tty, struct file *file)
{
 struct slgt_info *info = tty->driver_data;
 unsigned int result;
  unsigned long flags;

 spin_lock_irqsave(&info->lock,flags);
  get_signals(info);
 spin_unlock_irqrestore(&info->lock,flags);

 result = ((info->signals & SerialSignal_RTS) ? TIOCM_RTS:0) +
  ((info->signals & SerialSignal_DTR) ? TIOCM_DTR:0) +
  ((info->signals & SerialSignal_DCD) ? TIOCM_CAR:0) +
  ((info->signals & SerialSignal_RI) ? TIOCM_RNG:0) +
  ((info->signals & SerialSignal_DSR) ? TIOCM_DSR:0) +
  ((info->signals & SerialSignal_CTS) ? TIOCM_CTS:0);

 DBGINFO(("%s tiocmget value=%08X\n", info->device_name, result));
 return result;
}
