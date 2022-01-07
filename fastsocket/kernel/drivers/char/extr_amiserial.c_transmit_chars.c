
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {int head; int tail; int* buf; } ;
struct async_struct {int x_char; int IER; TYPE_4__ xmit; TYPE_3__* state; TYPE_1__* tty; } ;
struct TYPE_10__ {int serdat; void* intena; void* intreq; } ;
struct TYPE_7__ {int tx; } ;
struct TYPE_8__ {TYPE_2__ icount; } ;
struct TYPE_6__ {scalar_t__ hw_stopped; scalar_t__ stopped; } ;


 scalar_t__ CIRC_CNT (int,int,int) ;
 void* IF_TBE ;
 int RS_EVENT_WRITE_WAKEUP ;
 int SERIAL_XMIT_SIZE ;
 int UART_IER_THRI ;
 scalar_t__ WAKEUP_CHARS ;
 TYPE_5__ custom ;
 int mb () ;
 int printk (char*) ;
 int rs_sched_event (struct async_struct*,int ) ;

__attribute__((used)) static void transmit_chars(struct async_struct *info)
{
 custom.intreq = IF_TBE;
 mb();
 if (info->x_char) {
         custom.serdat = info->x_char | 0x100;
  mb();
  info->state->icount.tx++;
  info->x_char = 0;
  return;
 }
 if (info->xmit.head == info->xmit.tail
     || info->tty->stopped
     || info->tty->hw_stopped) {
  info->IER &= ~UART_IER_THRI;
         custom.intena = IF_TBE;
  mb();
  return;
 }

 custom.serdat = info->xmit.buf[info->xmit.tail++] | 0x100;
 mb();
 info->xmit.tail = info->xmit.tail & (SERIAL_XMIT_SIZE-1);
 info->state->icount.tx++;

 if (CIRC_CNT(info->xmit.head,
       info->xmit.tail,
       SERIAL_XMIT_SIZE) < WAKEUP_CHARS)
  rs_sched_event(info, RS_EVENT_WRITE_WAKEUP);




 if (info->xmit.head == info->xmit.tail) {
         custom.intena = IF_TBE;
  mb();
  info->IER &= ~UART_IER_THRI;
 }
}
