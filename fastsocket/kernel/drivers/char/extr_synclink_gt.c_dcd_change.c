
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int flags; scalar_t__ tty; int open_wait; } ;
struct TYPE_5__ {int dcd; } ;
struct TYPE_4__ {int dcd_down; int dcd_up; } ;
struct slgt_info {int signals; TYPE_3__ port; int pending_bh; int event_wait_q; int status_event_wait_q; int netdev; scalar_t__ netcount; TYPE_2__ icount; int dcd_chkcount; int device_name; TYPE_1__ input_signal_events; } ;


 int ASYNC_CHECK_CD ;
 int BH_STATUS ;
 unsigned short BIT1 ;
 int DBGISR (char*) ;
 scalar_t__ IO_PIN_SHUTDOWN_LIMIT ;
 int IRQ_DCD ;
 int SerialSignal_DCD ;
 int netif_carrier_off (int ) ;
 int netif_carrier_on (int ) ;
 int slgt_irq_off (struct slgt_info*,int ) ;
 int tty_hangup (scalar_t__) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static void dcd_change(struct slgt_info *info, unsigned short status)
{
 if (status & BIT1) {
  info->signals |= SerialSignal_DCD;
  info->input_signal_events.dcd_up++;
 } else {
  info->signals &= ~SerialSignal_DCD;
  info->input_signal_events.dcd_down++;
 }
 DBGISR(("dcd_change %s signals=%04X\n", info->device_name, info->signals));
 if ((info->dcd_chkcount)++ == IO_PIN_SHUTDOWN_LIMIT) {
  slgt_irq_off(info, IRQ_DCD);
  return;
 }
 info->icount.dcd++;
 wake_up_interruptible(&info->status_event_wait_q);
 wake_up_interruptible(&info->event_wait_q);
 info->pending_bh |= BH_STATUS;

 if (info->port.flags & ASYNC_CHECK_CD) {
  if (info->signals & SerialSignal_DCD)
   wake_up_interruptible(&info->port.open_wait);
  else {
   if (info->port.tty)
    tty_hangup(info->port.tty);
  }
 }
}
