
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int flags; int name; scalar_t__ driver_data; } ;
struct serial_struct {int dummy; } ;
struct m68k_serial {int dummy; } ;
struct file {int dummy; } ;


 int EFAULT ;
 int EIO ;
 int ENODEV ;
 int ENOIOCTLCMD ;



 unsigned int TIOCSERCONFIG ;


 unsigned int TIOCSERGWILD ;
 unsigned int TIOCSERSWILD ;

 int TTY_IO_ERROR ;
 int VERIFY_WRITE ;
 int access_ok (int ,void*,int) ;
 int copy_to_user (struct m68k_serial*,struct m68k_serial*,int) ;
 int get_lsr_info (struct m68k_serial*,unsigned int*) ;
 int get_serial_info (struct m68k_serial*,struct serial_struct*) ;
 int send_break (struct m68k_serial*,unsigned long) ;
 scalar_t__ serial_paranoia_check (struct m68k_serial*,int ,char*) ;
 int set_serial_info (struct m68k_serial*,struct serial_struct*) ;
 int tty_check_change (struct tty_struct*) ;
 int tty_wait_until_sent (struct tty_struct*,int ) ;

__attribute__((used)) static int rs_ioctl(struct tty_struct *tty, struct file * file,
      unsigned int cmd, unsigned long arg)
{
 int error;
 struct m68k_serial * info = (struct m68k_serial *)tty->driver_data;
 int retval;

 if (serial_paranoia_check(info, tty->name, "rs_ioctl"))
  return -ENODEV;

 if ((cmd != 131) && (cmd != 128) &&
     (cmd != TIOCSERCONFIG) && (cmd != TIOCSERGWILD) &&
     (cmd != TIOCSERSWILD) && (cmd != 129)) {
  if (tty->flags & (1 << TTY_IO_ERROR))
      return -EIO;
 }

 switch (cmd) {
  case 133:
   retval = tty_check_change(tty);
   if (retval)
    return retval;
   tty_wait_until_sent(tty, 0);
   if (!arg)
    send_break(info, 250);
   return 0;
  case 132:
   retval = tty_check_change(tty);
   if (retval)
    return retval;
   tty_wait_until_sent(tty, 0);
   send_break(info, arg ? arg*(100) : 250);
   return 0;
  case 131:
   if (access_ok(VERIFY_WRITE, (void *) arg,
      sizeof(struct serial_struct)))
    return get_serial_info(info,
            (struct serial_struct *) arg);
   return -EFAULT;
  case 128:
   return set_serial_info(info,
            (struct serial_struct *) arg);
  case 130:
   if (access_ok(VERIFY_WRITE, (void *) arg,
      sizeof(unsigned int)))
    return get_lsr_info(info, (unsigned int *) arg);
   return -EFAULT;
  case 129:
   if (!access_ok(VERIFY_WRITE, (void *) arg,
      sizeof(struct m68k_serial)))
    return -EFAULT;
   copy_to_user((struct m68k_serial *) arg,
        info, sizeof(struct m68k_serial));
   return 0;

  default:
   return -ENOIOCTLCMD;
  }
 return 0;
}
