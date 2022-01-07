
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct uart_port {scalar_t__ membase; } ;


 int UART_IIR ;
 int cvmx_read_csr (int ) ;

unsigned int octeon_serial_in(struct uart_port *up, int offset)
{
 int rv = cvmx_read_csr((uint64_t)(up->membase + (offset << 3)));
 if (offset == UART_IIR && (rv & 0xf) == 7) {

  cvmx_read_csr((uint64_t)(up->membase + (39 << 3)));
  rv = cvmx_read_csr((uint64_t)(up->membase + (offset << 3)));
 }
 return rv;
}
