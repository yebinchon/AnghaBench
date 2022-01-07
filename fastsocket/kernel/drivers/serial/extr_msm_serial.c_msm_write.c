
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {scalar_t__ membase; } ;


 int __raw_writel (unsigned int,scalar_t__) ;

__attribute__((used)) static inline void msm_write(struct uart_port *port, unsigned int val,
        unsigned int off)
{
 __raw_writel(val, port->membase + off);
}
