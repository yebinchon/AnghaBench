
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {TYPE_3__* tty; } ;
struct TYPE_5__ {scalar_t__ mode; } ;
struct mgsl_struct {int irq_spinlock; TYPE_4__ port; scalar_t__ netcount; scalar_t__ dsr_chkcount; scalar_t__ ri_chkcount; scalar_t__ cts_chkcount; scalar_t__ dcd_chkcount; TYPE_1__ params; scalar_t__ xmit_tail; scalar_t__ xmit_head; scalar_t__ xmit_cnt; } ;
struct TYPE_7__ {TYPE_2__* termios; } ;
struct TYPE_6__ {int c_cflag; } ;


 int CREAD ;
 int IO_PIN ;
 scalar_t__ MGSL_MODE_HDLC ;
 scalar_t__ MGSL_MODE_RAW ;
 scalar_t__ SICR_CTS ;
 scalar_t__ SICR_DCD ;
 scalar_t__ SICR_DSR ;
 scalar_t__ SICR_RI ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int usc_EnableInterrupts (struct mgsl_struct*,int ) ;
 int usc_EnableStatusIrqs (struct mgsl_struct*,scalar_t__) ;
 int usc_get_serial_signals (struct mgsl_struct*) ;
 int usc_set_async_mode (struct mgsl_struct*) ;
 int usc_set_serial_signals (struct mgsl_struct*) ;
 int usc_set_sync_mode (struct mgsl_struct*) ;
 int usc_start_receiver (struct mgsl_struct*) ;
 int usc_stop_receiver (struct mgsl_struct*) ;
 int usc_stop_transmitter (struct mgsl_struct*) ;

__attribute__((used)) static void mgsl_program_hw(struct mgsl_struct *info)
{
 unsigned long flags;

 spin_lock_irqsave(&info->irq_spinlock,flags);

 usc_stop_receiver(info);
 usc_stop_transmitter(info);
 info->xmit_cnt = info->xmit_head = info->xmit_tail = 0;

 if (info->params.mode == MGSL_MODE_HDLC ||
     info->params.mode == MGSL_MODE_RAW ||
     info->netcount)
  usc_set_sync_mode(info);
 else
  usc_set_async_mode(info);

 usc_set_serial_signals(info);

 info->dcd_chkcount = 0;
 info->cts_chkcount = 0;
 info->ri_chkcount = 0;
 info->dsr_chkcount = 0;

 usc_EnableStatusIrqs(info,SICR_CTS+SICR_DSR+SICR_DCD+SICR_RI);
 usc_EnableInterrupts(info, IO_PIN);
 usc_get_serial_signals(info);

 if (info->netcount || info->port.tty->termios->c_cflag & CREAD)
  usc_start_receiver(info);

 spin_unlock_irqrestore(&info->irq_spinlock,flags);
}
