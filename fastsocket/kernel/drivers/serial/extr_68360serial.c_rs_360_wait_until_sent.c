
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct tty_struct {int name; scalar_t__ driver_data; } ;
struct TYPE_8__ {TYPE_3__ volatile* tx_bd_base; TYPE_3__* tx_cur; TYPE_1__* state; } ;
typedef TYPE_2__ ser_info_t ;
struct TYPE_10__ {int state; } ;
struct TYPE_9__ {int status; } ;
struct TYPE_7__ {scalar_t__ type; } ;
typedef TYPE_3__ QUICC_BD ;


 int BD_SC_READY ;
 scalar_t__ PORT_UNKNOWN ;
 int TASK_RUNNING ;
 int TX_NUM_FIFO ;
 TYPE_4__* current ;
 unsigned long jiffies ;
 int jiffies_to_msecs (unsigned long) ;
 int lock_kernel () ;
 int lsr ;
 unsigned long min (unsigned long,unsigned long) ;
 int msleep_interruptible (int ) ;
 int printk (char*,int,...) ;
 scalar_t__ serial_paranoia_check (TYPE_2__*,int ,char*) ;
 scalar_t__ signal_pending (TYPE_4__*) ;
 scalar_t__ time_after (unsigned long,unsigned long) ;
 int unlock_kernel () ;

__attribute__((used)) static void rs_360_wait_until_sent(struct tty_struct *tty, int timeout)
{
 ser_info_t *info = (ser_info_t *)tty->driver_data;
 unsigned long orig_jiffies, char_time;

 volatile QUICC_BD *bdp;

 if (serial_paranoia_check(info, tty->name, "rs_wait_until_sent"))
  return;






 orig_jiffies = jiffies;
 char_time = 1;
 if (timeout)
  char_time = min(char_time, (unsigned long)timeout);





 lock_kernel();





 do {




  msleep_interruptible(jiffies_to_msecs(char_time));
  if (signal_pending(current))
   break;
  if (timeout && (time_after(jiffies, orig_jiffies + timeout)))
   break;






  bdp = info->tx_cur;
  if (bdp == info->tx_bd_base)
   bdp += (TX_NUM_FIFO-1);
  else
   bdp--;
 } while (bdp->status & BD_SC_READY);
 current->state = TASK_RUNNING;
 unlock_kernel();



}
