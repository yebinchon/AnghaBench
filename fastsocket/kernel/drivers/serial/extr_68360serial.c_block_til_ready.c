
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct tty_struct {int flags; TYPE_1__* termios; } ;
struct serial_state {int smc_scc_num; int count; int line; } ;
struct file {int f_flags; } ;
struct TYPE_11__ {int flags; int line; int blocked_open; int open_wait; struct serial_state* state; int close_wait; } ;
typedef TYPE_2__ ser_info_t ;
struct TYPE_12__ {int state; } ;
struct TYPE_10__ {int c_cflag; } ;


 int ASYNC_CLOSING ;
 int ASYNC_HUP_NOTIFY ;
 int ASYNC_INITIALIZED ;
 int ASYNC_NORMAL_ACTIVE ;
 int CBAUD ;
 int CLOCAL ;
 int DECLARE_WAITQUEUE (int ,TYPE_3__*) ;
 int EAGAIN ;
 int ERESTARTSYS ;
 int NUM_IS_SCC ;
 int O_NONBLOCK ;
 int TASK_INTERRUPTIBLE ;
 int TASK_RUNNING ;
 int TTY_IO_ERROR ;
 int UART_MCR ;
 int UART_MCR_DTR ;
 int UART_MCR_RTS ;
 int UART_MSR ;
 int UART_MSR_DCD ;
 int add_wait_queue (int *,int *) ;
 TYPE_3__* current ;
 int interruptible_sleep_on (int *) ;
 int local_irq_disable () ;
 int local_irq_enable () ;
 int printk (char*,int ,int ) ;
 int remove_wait_queue (int *,int *) ;
 int schedule () ;
 int serial_in (TYPE_2__*,int ) ;
 int serial_inp (TYPE_2__*,int ) ;
 int serial_out (TYPE_2__*,int ,int) ;
 int set_current_state (int ) ;
 scalar_t__ signal_pending (TYPE_3__*) ;
 scalar_t__ tty_hung_up_p (struct file*) ;
 int wait ;

__attribute__((used)) static int block_til_ready(struct tty_struct *tty, struct file * filp,
      ser_info_t *info)
{



 struct serial_state *state = info->state;
 int retval;
 int do_clocal = 0;





 if (tty_hung_up_p(filp) ||
     (info->flags & ASYNC_CLOSING)) {
  if (info->flags & ASYNC_CLOSING)
   interruptible_sleep_on(&info->close_wait);






  return -EAGAIN;

 }







 if ((filp->f_flags & O_NONBLOCK) ||
     (tty->flags & (1 << TTY_IO_ERROR)) ||
     !(info->state->smc_scc_num & NUM_IS_SCC)) {
  info->flags |= ASYNC_NORMAL_ACTIVE;
  return 0;
 }

 if (tty->termios->c_cflag & CLOCAL)
  do_clocal = 1;
 retval = 0;
 if (retval)
  return retval;
 info->flags |= ASYNC_NORMAL_ACTIVE;
 return 0;
}
