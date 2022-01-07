
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nwpserial_port {int dcr_host; } ;


 int UART_LSR ;
 unsigned int dcr_read (int ,int ) ;
 int udelay (int) ;

__attribute__((used)) static void wait_for_bits(struct nwpserial_port *up, int bits)
{
 unsigned int status, tmout = 10000;


 do {
  status = dcr_read(up->dcr_host, UART_LSR);

  if (--tmout == 0)
   break;
  udelay(1);
 } while ((status & bits) != bits);
}
