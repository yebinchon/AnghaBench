
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int u8 ;
struct uart_port {scalar_t__ membase; } ;


 int UART_LCR ;
 int cvmx_write_csr (int ,int ) ;

void octeon_serial_out(struct uart_port *up, int offset, int value)
{




 if (offset == UART_LCR)
  value &= 0x9f;
 cvmx_write_csr((uint64_t)(up->membase + (offset << 3)), (u8)value);
}
