
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int dsr; } ;
struct TYPE_9__ {TYPE_3__* state; TYPE_1__ icount; } ;
struct uart_pmac_port {unsigned char prev_status; int flags; TYPE_4__ port; } ;
struct TYPE_7__ {int delta_msr_wait; } ;
struct TYPE_8__ {TYPE_2__ port; } ;


 unsigned char BRK_ABRT ;
 unsigned char CTS ;
 unsigned char DCD ;
 int PMACZILOG_FLAG_BREAK ;
 int R0 ;
 int RES_EXT_INT ;
 unsigned char SYNC_HUNT ;
 scalar_t__ ZS_IS_OPEN (struct uart_pmac_port*) ;
 scalar_t__ ZS_WANTS_MODEM_STATUS (struct uart_pmac_port*) ;
 unsigned char read_zsreg (struct uart_pmac_port*,int ) ;
 int uart_handle_cts_change (TYPE_4__*,int) ;
 int uart_handle_dcd_change (TYPE_4__*,unsigned char) ;
 int wake_up_interruptible (int *) ;
 int write_zsreg (struct uart_pmac_port*,int ,int ) ;
 int zssync (struct uart_pmac_port*) ;

__attribute__((used)) static void pmz_status_handle(struct uart_pmac_port *uap)
{
 unsigned char status;

 status = read_zsreg(uap, R0);
 write_zsreg(uap, R0, RES_EXT_INT);
 zssync(uap);

 if (ZS_IS_OPEN(uap) && ZS_WANTS_MODEM_STATUS(uap)) {
  if (status & SYNC_HUNT)
   uap->port.icount.dsr++;






  if ((status ^ uap->prev_status) & DCD)
   uart_handle_dcd_change(&uap->port,
            (status & DCD));
  if ((status ^ uap->prev_status) & CTS)
   uart_handle_cts_change(&uap->port,
            !(status & CTS));

  wake_up_interruptible(&uap->port.state->port.delta_msr_wait);
 }

 if (status & BRK_ABRT)
  uap->flags |= PMACZILOG_FLAG_BREAK;

 uap->prev_status = status;
}
