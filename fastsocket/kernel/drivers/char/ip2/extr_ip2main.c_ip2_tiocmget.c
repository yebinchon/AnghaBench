
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int wait_queue_t ;
struct tty_struct {size_t index; } ;
struct file {int dummy; } ;
typedef TYPE_1__* i2ChanStrPtr ;
struct TYPE_4__ {int dataSetOut; int dataSetIn; int dss_now_wait; int pMyBord; } ;


 int CMD_DSS_NOW ;
 TYPE_1__** DevTable ;
 int EINTR ;
 int ENODEV ;
 int I2_CTS ;
 int I2_DCD ;
 int I2_DSR ;
 int I2_DTR ;
 int I2_RI ;
 int I2_RTS ;
 int PTYPE_BYPASS ;
 int TASK_INTERRUPTIBLE ;
 int TASK_RUNNING ;
 int TIOCM_CAR ;
 int TIOCM_CTS ;
 int TIOCM_DSR ;
 int TIOCM_DTR ;
 int TIOCM_RNG ;
 int TIOCM_RTS ;
 int add_wait_queue (int *,int *) ;
 int current ;
 int i2QueueCommands (int ,TYPE_1__*,int,int,int ) ;
 int init_waitqueue_entry (int *,int ) ;
 int remove_wait_queue (int *,int *) ;
 int schedule () ;
 int serviceOutgoingFifo (int ) ;
 int set_current_state (int ) ;
 scalar_t__ signal_pending (int ) ;

__attribute__((used)) static int ip2_tiocmget(struct tty_struct *tty, struct file *file)
{
 i2ChanStrPtr pCh = DevTable[tty->index];




 if (pCh == ((void*)0))
  return -ENODEV;
 return ((pCh->dataSetOut & I2_RTS) ? TIOCM_RTS : 0)
       | ((pCh->dataSetOut & I2_DTR) ? TIOCM_DTR : 0)
       | ((pCh->dataSetIn & I2_DCD) ? TIOCM_CAR : 0)
       | ((pCh->dataSetIn & I2_RI) ? TIOCM_RNG : 0)
       | ((pCh->dataSetIn & I2_DSR) ? TIOCM_DSR : 0)
       | ((pCh->dataSetIn & I2_CTS) ? TIOCM_CTS : 0);
}
