
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct uart_port {int line; scalar_t__ membase; } ;


 int writeb (scalar_t__,scalar_t__) ;

__attribute__((used)) static inline void write_sc_port(struct uart_port *p, u8 reg, u8 val)
{
 writeb(val, p->membase + p->line * 0x20 + reg);
}
