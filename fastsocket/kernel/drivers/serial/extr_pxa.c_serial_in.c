
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ membase; } ;
struct uart_pxa_port {TYPE_1__ port; } ;


 unsigned int readl (scalar_t__) ;

__attribute__((used)) static inline unsigned int serial_in(struct uart_pxa_port *up, int offset)
{
 offset <<= 2;
 return readl(up->port.membase + offset);
}
