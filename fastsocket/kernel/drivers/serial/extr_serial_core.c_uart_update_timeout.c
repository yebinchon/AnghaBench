
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {unsigned int fifosize; unsigned int timeout; } ;





 unsigned int CSIZE ;
 unsigned int CSTOPB ;
 unsigned int HZ ;
 unsigned int PARENB ;

void
uart_update_timeout(struct uart_port *port, unsigned int cflag,
      unsigned int baud)
{
 unsigned int bits;


 switch (cflag & CSIZE) {
 case 130:
  bits = 7;
  break;
 case 129:
  bits = 8;
  break;
 case 128:
  bits = 9;
  break;
 default:
  bits = 10;
  break;
 }

 if (cflag & CSTOPB)
  bits++;
 if (cflag & PARENB)
  bits++;




 bits = bits * port->fifosize;





 port->timeout = (HZ * bits) / baud + HZ/50;
}
