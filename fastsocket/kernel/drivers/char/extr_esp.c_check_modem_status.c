
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int flags; int tty; int open_wait; int delta_msr_wait; } ;
struct TYPE_3__ {int cts; int dcd; int dsr; int rng; } ;
struct esp_struct {TYPE_2__ port; int line; TYPE_1__ icount; } ;


 int ASYNC_CHECK_CD ;
 int ESI_GET_UART_STAT ;
 int UART_ESI_CMD1 ;
 int UART_ESI_STAT2 ;
 int UART_MSR_ANY_DELTA ;
 int UART_MSR_DCD ;
 int UART_MSR_DCTS ;
 int UART_MSR_DDCD ;
 int UART_MSR_DDSR ;
 int UART_MSR_TERI ;
 int printk (char*,...) ;
 int serial_in (struct esp_struct*,int ) ;
 int serial_out (struct esp_struct*,int ,int ) ;
 int tty_hangup (int ) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static void check_modem_status(struct esp_struct *info)
{
 int status;

 serial_out(info, UART_ESI_CMD1, ESI_GET_UART_STAT);
 status = serial_in(info, UART_ESI_STAT2);

 if (status & UART_MSR_ANY_DELTA) {

  if (status & UART_MSR_TERI)
   info->icount.rng++;
  if (status & UART_MSR_DDSR)
   info->icount.dsr++;
  if (status & UART_MSR_DDCD)
   info->icount.dcd++;
  if (status & UART_MSR_DCTS)
   info->icount.cts++;
  wake_up_interruptible(&info->port.delta_msr_wait);
 }

 if ((info->port.flags & ASYNC_CHECK_CD) && (status & UART_MSR_DDCD)) {




  if (status & UART_MSR_DCD)
   wake_up_interruptible(&info->port.open_wait);
  else {



   tty_hangup(info->port.tty);
  }
 }
}
