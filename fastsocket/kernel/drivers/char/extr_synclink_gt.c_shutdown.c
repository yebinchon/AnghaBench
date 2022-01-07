
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int flags; TYPE_2__* tty; } ;
struct slgt_info {TYPE_3__ port; int lock; int gpio_wait_q; int signals; int * tx_buf; int rx_timer; int tx_timer; int event_wait_q; int status_event_wait_q; int device_name; } ;
struct TYPE_5__ {int flags; TYPE_1__* termios; } ;
struct TYPE_4__ {int c_cflag; } ;


 int ASYNC_INITIALIZED ;
 int DBGINFO (char*) ;
 int HUPCL ;
 int IRQ_ALL ;
 int IRQ_MASTER ;
 int SerialSignal_DTR ;
 int SerialSignal_RTS ;
 int TTY_IO_ERROR ;
 int del_timer_sync (int *) ;
 int flush_cond_wait (int *) ;
 int kfree (int *) ;
 int rx_stop (struct slgt_info*) ;
 int set_bit (int ,int *) ;
 int set_signals (struct slgt_info*) ;
 int slgt_irq_off (struct slgt_info*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int tx_stop (struct slgt_info*) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static void shutdown(struct slgt_info *info)
{
 unsigned long flags;

 if (!(info->port.flags & ASYNC_INITIALIZED))
  return;

 DBGINFO(("%s shutdown\n", info->device_name));



 wake_up_interruptible(&info->status_event_wait_q);
 wake_up_interruptible(&info->event_wait_q);

 del_timer_sync(&info->tx_timer);
 del_timer_sync(&info->rx_timer);

 kfree(info->tx_buf);
 info->tx_buf = ((void*)0);

 spin_lock_irqsave(&info->lock,flags);

 tx_stop(info);
 rx_stop(info);

 slgt_irq_off(info, IRQ_ALL | IRQ_MASTER);

  if (!info->port.tty || info->port.tty->termios->c_cflag & HUPCL) {
   info->signals &= ~(SerialSignal_DTR + SerialSignal_RTS);
  set_signals(info);
 }

 flush_cond_wait(&info->gpio_wait_q);

 spin_unlock_irqrestore(&info->lock,flags);

 if (info->port.tty)
  set_bit(TTY_IO_ERROR, &info->port.tty->flags);

 info->port.flags &= ~ASYNC_INITIALIZED;
}
