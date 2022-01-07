
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int type; } ;
struct uart_8250_port {int capabilities; TYPE_1__ port; int bugs; scalar_t__ acr; } ;


 int DEBUG_AUTOCONF (char*,unsigned int,...) ;
 int PORT_16650V2 ;
 int PORT_16654 ;
 int PORT_16850 ;
 int PORT_16C950 ;
 int UART_BUG_QUOT ;
 int UART_CAP_EFR ;
 int UART_CAP_SLEEP ;
 int UART_EFR ;
 int UART_EFR_ECB ;
 int UART_ID1 ;
 int UART_ID2 ;
 int UART_ID3 ;
 int UART_LCR ;
 int UART_REV ;
 unsigned int autoconfig_read_divisor_id (struct uart_8250_port*) ;
 unsigned int serial_icr_read (struct uart_8250_port*,int ) ;
 int serial_out (struct uart_8250_port*,int ,int) ;
 int size_fifo (struct uart_8250_port*) ;

__attribute__((used)) static void autoconfig_has_efr(struct uart_8250_port *up)
{
 unsigned int id1, id2, id3, rev;




 up->capabilities |= UART_CAP_EFR | UART_CAP_SLEEP;
 up->acr = 0;
 serial_out(up, UART_LCR, 0xBF);
 serial_out(up, UART_EFR, UART_EFR_ECB);
 serial_out(up, UART_LCR, 0x00);
 id1 = serial_icr_read(up, UART_ID1);
 id2 = serial_icr_read(up, UART_ID2);
 id3 = serial_icr_read(up, UART_ID3);
 rev = serial_icr_read(up, UART_REV);

 DEBUG_AUTOCONF("950id=%02x:%02x:%02x:%02x ", id1, id2, id3, rev);

 if (id1 == 0x16 && id2 == 0xC9 &&
     (id3 == 0x50 || id3 == 0x52 || id3 == 0x54)) {
  up->port.type = PORT_16C950;






  if (id3 == 0x52 && rev == 0x01)
   up->bugs |= UART_BUG_QUOT;
  return;
 }
 id1 = autoconfig_read_divisor_id(up);
 DEBUG_AUTOCONF("850id=%04x ", id1);

 id2 = id1 >> 8;
 if (id2 == 0x10 || id2 == 0x12 || id2 == 0x14) {
  up->port.type = PORT_16850;
  return;
 }
 if (size_fifo(up) == 64)
  up->port.type = PORT_16654;
 else
  up->port.type = PORT_16650V2;
}
