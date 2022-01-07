
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct tty_struct {int hw_stopped; } ;
struct TYPE_12__ {int flags; } ;
struct TYPE_11__ {int cts_down; int cts_up; } ;
struct TYPE_10__ {int cts; } ;
struct TYPE_13__ {int serial_signals; int pending_bh; TYPE_3__ port; int event_wait_q; int status_event_wait_q; TYPE_2__ input_signal_events; TYPE_1__ icount; int cts_chkcount; } ;
typedef TYPE_4__ MGSLPC_INFO ;


 int ASYNC_CTS_FLOW ;
 int BH_STATUS ;
 int BH_TRANSMIT ;
 int CHB ;
 scalar_t__ DEBUG_LEVEL_ISR ;
 scalar_t__ IO_PIN_SHUTDOWN_LIMIT ;
 int IRQ_CTS ;
 int SerialSignal_CTS ;
 scalar_t__ debug_level ;
 int get_signals (TYPE_4__*) ;
 int irq_disable (TYPE_4__*,int ,int ) ;
 int printk (char*) ;
 int tx_start (TYPE_4__*,struct tty_struct*) ;
 int tx_stop (TYPE_4__*) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static void cts_change(MGSLPC_INFO *info, struct tty_struct *tty)
{
 get_signals(info);
 if ((info->cts_chkcount)++ >= IO_PIN_SHUTDOWN_LIMIT)
  irq_disable(info, CHB, IRQ_CTS);
 info->icount.cts++;
 if (info->serial_signals & SerialSignal_CTS)
  info->input_signal_events.cts_up++;
 else
  info->input_signal_events.cts_down++;
 wake_up_interruptible(&info->status_event_wait_q);
 wake_up_interruptible(&info->event_wait_q);

 if (info->port.flags & ASYNC_CTS_FLOW) {
  if (tty->hw_stopped) {
   if (info->serial_signals & SerialSignal_CTS) {
    if (debug_level >= DEBUG_LEVEL_ISR)
     printk("CTS tx start...");
    if (tty)
     tty->hw_stopped = 0;
    tx_start(info, tty);
    info->pending_bh |= BH_TRANSMIT;
    return;
   }
  } else {
   if (!(info->serial_signals & SerialSignal_CTS)) {
    if (debug_level >= DEBUG_LEVEL_ISR)
     printk("CTS tx stop...");
    if (tty)
     tty->hw_stopped = 1;
    tx_stop(info);
   }
  }
 }
 info->pending_bh |= BH_STATUS;
}
