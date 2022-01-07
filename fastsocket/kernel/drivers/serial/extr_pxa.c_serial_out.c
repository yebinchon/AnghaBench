
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ membase; } ;
struct uart_pxa_port {TYPE_1__ port; } ;


 int writel (int,scalar_t__) ;

__attribute__((used)) static inline void serial_out(struct uart_pxa_port *up, int offset, int value)
{
 offset <<= 2;
 writel(value, up->port.membase + offset);
}
