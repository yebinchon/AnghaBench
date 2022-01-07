
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct tty_struct {int dummy; } ;
struct tty_port {int open_wait; } ;
struct moxa_port {struct tty_port port; } ;
struct file {int dummy; } ;


 int DEFINE_WAIT (int ) ;
 int EAGAIN ;
 int ERESTARTSYS ;
 int TASK_INTERRUPTIBLE ;
 int current ;
 int finish_wait (int *,int *) ;
 int prepare_to_wait (int *,int *,int ) ;
 int schedule () ;
 scalar_t__ signal_pending (int ) ;
 scalar_t__ tty_hung_up_p (struct file*) ;
 scalar_t__ tty_port_carrier_raised (struct tty_port*) ;
 int wait ;

__attribute__((used)) static int moxa_block_till_ready(struct tty_struct *tty, struct file *filp,
       struct moxa_port *ch)
{
 struct tty_port *port = &ch->port;
 DEFINE_WAIT(wait);
 int retval = 0;
 u8 dcd;

 while (1) {
  prepare_to_wait(&port->open_wait, &wait, TASK_INTERRUPTIBLE);
  if (tty_hung_up_p(filp)) {



   retval = -EAGAIN;

   break;
  }
  dcd = tty_port_carrier_raised(port);
  if (dcd)
   break;

  if (signal_pending(current)) {
   retval = -ERESTARTSYS;
   break;
  }
  schedule();
 }
 finish_wait(&port->open_wait, &wait);

 return retval;
}
