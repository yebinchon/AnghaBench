
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int dsr_down; int dsr_up; } ;
struct TYPE_7__ {int dsr; } ;
struct TYPE_9__ {int serial_signals; int pending_bh; int event_wait_q; int status_event_wait_q; TYPE_2__ input_signal_events; TYPE_1__ icount; int dsr_chkcount; } ;
typedef TYPE_3__ MGSLPC_INFO ;


 int BH_STATUS ;
 scalar_t__ IO_PIN_SHUTDOWN_LIMIT ;
 int PVR_DSR ;
 int SerialSignal_DSR ;
 int get_signals (TYPE_3__*) ;
 int port_irq_disable (TYPE_3__*,int ) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static void dsr_change(MGSLPC_INFO *info)
{
 get_signals(info);
 if ((info->dsr_chkcount)++ >= IO_PIN_SHUTDOWN_LIMIT)
  port_irq_disable(info, PVR_DSR);
 info->icount.dsr++;
 if (info->serial_signals & SerialSignal_DSR)
  info->input_signal_events.dsr_up++;
 else
  info->input_signal_events.dsr_down++;
 wake_up_interruptible(&info->status_event_wait_q);
 wake_up_interruptible(&info->event_wait_q);
 info->pending_bh |= BH_STATUS;
}
