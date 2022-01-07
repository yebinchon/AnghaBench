
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int iotype; int serial_out; void* serial_in; } ;
struct uart_8250_port {int cur_iotype; } ;
 void* au_serial_in ;
 int au_serial_out ;
 int dwapb_serial_out ;
 void* hub6_serial_in ;
 int hub6_serial_out ;
 void* io_serial_in ;
 int io_serial_out ;
 void* mem32_serial_in ;
 int mem32_serial_out ;
 void* mem_serial_in ;
 int mem_serial_out ;
 void* tsi_serial_in ;
 int tsi_serial_out ;

__attribute__((used)) static void set_io_from_upio(struct uart_port *p)
{
 struct uart_8250_port *up = (struct uart_8250_port *)p;
 switch (p->iotype) {
 case 132:
  p->serial_in = hub6_serial_in;
  p->serial_out = hub6_serial_out;
  break;

 case 131:
  p->serial_in = mem_serial_in;
  p->serial_out = mem_serial_out;
  break;

 case 129:
 case 130:
  p->serial_in = mem32_serial_in;
  p->serial_out = mem32_serial_out;
  break;







 case 128:
  p->serial_in = tsi_serial_in;
  p->serial_out = tsi_serial_out;
  break;

 case 133:
  p->serial_in = mem_serial_in;
  p->serial_out = dwapb_serial_out;
  break;

 default:
  p->serial_in = io_serial_in;
  p->serial_out = io_serial_out;
  break;
 }

 up->cur_iotype = p->iotype;
}
