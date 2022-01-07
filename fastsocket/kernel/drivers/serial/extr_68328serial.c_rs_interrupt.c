
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct m68k_serial {size_t line; } ;
struct TYPE_6__ {unsigned short w; } ;
struct TYPE_5__ {unsigned short w; } ;
struct TYPE_7__ {TYPE_2__ utx; TYPE_1__ urx; } ;
typedef TYPE_3__ m68328_uart ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 unsigned short URX_DATA_READY ;
 unsigned short UTX_TX_AVAIL ;
 int receive_chars (struct m68k_serial*,unsigned short) ;
 int transmit_chars (struct m68k_serial*) ;
 TYPE_3__* uart_addr ;

irqreturn_t rs_interrupt(int irq, void *dev_id)
{
 struct m68k_serial *info = dev_id;
 m68328_uart *uart;
 unsigned short rx;
 unsigned short tx;

 uart = &uart_addr[info->line];
 rx = uart->urx.w;







 receive_chars(info, rx);

 return IRQ_HANDLED;
}
