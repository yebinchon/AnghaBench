
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__* tty; } ;
struct m68k_serial {size_t line; scalar_t__ xmit_cnt; int xmit_tail; int tqueue; scalar_t__* xmit_buf; TYPE_2__ port; scalar_t__ x_char; } ;
struct TYPE_9__ {scalar_t__ txdata; } ;
struct TYPE_10__ {TYPE_3__ b; } ;
struct TYPE_11__ {int ustcnt; TYPE_4__ utx; } ;
typedef TYPE_5__ m68328_uart ;
struct TYPE_7__ {scalar_t__ stopped; } ;


 int SERIAL_XMIT_SIZE ;
 int USTCNT_TX_INTR_MASK ;
 scalar_t__ WAKEUP_CHARS ;
 int schedule_work (int *) ;
 TYPE_5__* uart_addr ;

__attribute__((used)) static void transmit_chars(struct m68k_serial *info)
{
 m68328_uart *uart = &uart_addr[info->line];

 if (info->x_char) {

  uart->utx.b.txdata = info->x_char;
  info->x_char = 0;
  goto clear_and_return;
 }

 if((info->xmit_cnt <= 0) || info->port.tty->stopped) {

  uart->ustcnt &= ~USTCNT_TX_INTR_MASK;
  goto clear_and_return;
 }


 uart->utx.b.txdata = info->xmit_buf[info->xmit_tail++];
 info->xmit_tail = info->xmit_tail & (SERIAL_XMIT_SIZE-1);
 info->xmit_cnt--;

 if (info->xmit_cnt < WAKEUP_CHARS)
  schedule_work(&info->tqueue);

 if(info->xmit_cnt <= 0) {

  uart->ustcnt &= ~USTCNT_TX_INTR_MASK;
  goto clear_and_return;
 }

clear_and_return:

 return;
}
