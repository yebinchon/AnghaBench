
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_struct {int index; int name; int low_latency; struct async_struct* driver_data; } ;
struct file {int dummy; } ;
struct async_struct {int flags; int close_wait; struct tty_struct* tty; TYPE_1__* state; } ;
struct TYPE_2__ {int count; } ;


 int ASYNC_CLOSING ;
 int ASYNC_HUP_NOTIFY ;
 int ASYNC_LOW_LATENCY ;
 int EAGAIN ;
 int ENODEV ;
 int ERESTARTSYS ;
 int NR_PORTS ;
 int block_til_ready (struct tty_struct*,struct file*,struct async_struct*) ;
 int get_async_struct (int,struct async_struct**) ;
 int interruptible_sleep_on (int *) ;
 int printk (char*,int,...) ;
 scalar_t__ serial_paranoia_check (struct async_struct*,int,char*) ;
 int startup (struct async_struct*) ;
 scalar_t__ tty_hung_up_p (struct file*) ;

__attribute__((used)) static int rs_open(struct tty_struct *tty, struct file * filp)
{
 struct async_struct *info;
 int retval, line;

 line = tty->index;
 if ((line < 0) || (line >= NR_PORTS)) {
  return -ENODEV;
 }
 retval = get_async_struct(line, &info);
 if (retval) {
  return retval;
 }
 tty->driver_data = info;
 info->tty = tty;
 if (serial_paranoia_check(info, tty->name, "rs_open"))
  return -ENODEV;




 info->tty->low_latency = (info->flags & ASYNC_LOW_LATENCY) ? 1 : 0;




 if (tty_hung_up_p(filp) ||
     (info->flags & ASYNC_CLOSING)) {
  if (info->flags & ASYNC_CLOSING)
   interruptible_sleep_on(&info->close_wait);




  return -EAGAIN;

 }




 retval = startup(info);
 if (retval) {
  return retval;
 }

 retval = block_til_ready(tty, filp, info);
 if (retval) {




  return retval;
 }




 return 0;
}
