
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct tty_struct {int flags; } ;
struct tty_port {int flags; int blocked_open; int lock; int count; int open_wait; int close_wait; struct tty_struct* tty; } ;
struct gs_port {struct tty_port port; } ;
struct file {int f_flags; } ;
struct TYPE_4__ {int blocked; } ;


 int ASYNC_CLOSING ;
 int ASYNC_HUP_NOTIFY ;
 int ASYNC_INITIALIZED ;
 int ASYNC_NORMAL_ACTIVE ;
 scalar_t__ C_CLOCAL (struct tty_struct*) ;
 int DECLARE_WAITQUEUE (int ,TYPE_1__*) ;
 int EAGAIN ;
 int ERESTARTSYS ;
 int GS_DEBUG_BTR ;
 int O_NONBLOCK ;
 int TASK_INTERRUPTIBLE ;
 int TASK_RUNNING ;
 int TTY_IO_ERROR ;
 int add_wait_queue (int *,int *) ;
 TYPE_1__* current ;
 int func_enter () ;
 int func_exit () ;
 int gs_dprintk (int ,char*,...) ;
 int interruptible_sleep_on (int *) ;
 int remove_wait_queue (int *,int *) ;
 int schedule () ;
 int set_current_state (int ) ;
 scalar_t__ signal_pending (TYPE_1__*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ tty_hung_up_p (struct file*) ;
 int tty_port_carrier_raised (struct tty_port*) ;
 int wait ;

int gs_block_til_ready(void *port_, struct file * filp)
{
 struct gs_port *gp = port_;
 struct tty_port *port = &gp->port;
 DECLARE_WAITQUEUE(wait, current);
 int retval;
 int do_clocal = 0;
 int CD;
 struct tty_struct *tty;
 unsigned long flags;

 func_enter ();

 if (!port) return 0;

 tty = port->tty;

 gs_dprintk (GS_DEBUG_BTR, "Entering gs_block_till_ready.\n");




 if (tty_hung_up_p(filp) || port->flags & ASYNC_CLOSING) {
  interruptible_sleep_on(&port->close_wait);
  if (port->flags & ASYNC_HUP_NOTIFY)
   return -EAGAIN;
  else
   return -ERESTARTSYS;
 }

 gs_dprintk (GS_DEBUG_BTR, "after hung up\n");





 if ((filp->f_flags & O_NONBLOCK) ||
     (tty->flags & (1 << TTY_IO_ERROR))) {
  port->flags |= ASYNC_NORMAL_ACTIVE;
  return 0;
 }

 gs_dprintk (GS_DEBUG_BTR, "after nonblock\n");

 if (C_CLOCAL(tty))
  do_clocal = 1;
 retval = 0;

 add_wait_queue(&port->open_wait, &wait);

 gs_dprintk (GS_DEBUG_BTR, "after add waitq.\n");
 spin_lock_irqsave(&port->lock, flags);
 if (!tty_hung_up_p(filp)) {
  port->count--;
 }
 port->blocked_open++;
 spin_unlock_irqrestore(&port->lock, flags);
 while (1) {
  CD = tty_port_carrier_raised(port);
  gs_dprintk (GS_DEBUG_BTR, "CD is now %d.\n", CD);
  set_current_state (TASK_INTERRUPTIBLE);
  if (tty_hung_up_p(filp) ||
      !(port->flags & ASYNC_INITIALIZED)) {
   if (port->flags & ASYNC_HUP_NOTIFY)
    retval = -EAGAIN;
   else
    retval = -ERESTARTSYS;
   break;
  }
  if (!(port->flags & ASYNC_CLOSING) &&
      (do_clocal || CD))
   break;
  gs_dprintk (GS_DEBUG_BTR, "signal_pending is now: %d (%lx)\n",
  (int)signal_pending (current), *(long*)(&current->blocked));
  if (signal_pending(current)) {
   retval = -ERESTARTSYS;
   break;
  }
  schedule();
 }
 gs_dprintk (GS_DEBUG_BTR, "Got out of the loop. (%d)\n",
      port->blocked_open);
 set_current_state (TASK_RUNNING);
 remove_wait_queue(&port->open_wait, &wait);

 spin_lock_irqsave(&port->lock, flags);
 if (!tty_hung_up_p(filp)) {
  port->count++;
 }
 port->blocked_open--;
 if (retval == 0)
         port->flags |= ASYNC_NORMAL_ACTIVE;
 spin_unlock_irqrestore(&port->lock, flags);
 func_exit ();
 return retval;
}
