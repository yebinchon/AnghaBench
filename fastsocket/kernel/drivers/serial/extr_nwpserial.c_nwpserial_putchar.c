
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int tx; } ;
struct TYPE_4__ {TYPE_1__ icount; } ;
struct nwpserial_port {TYPE_2__ port; int dcr_host; } ;


 int UART_LSR_THRE ;
 int UART_TX ;
 int dcr_write (int ,int ,unsigned char) ;
 int wait_for_bits (struct nwpserial_port*,int ) ;

__attribute__((used)) static void nwpserial_putchar(struct nwpserial_port *up, unsigned char c)
{

 wait_for_bits(up, UART_LSR_THRE);
 dcr_write(up->dcr_host, UART_TX, c);
 up->port.icount.tx++;
}
