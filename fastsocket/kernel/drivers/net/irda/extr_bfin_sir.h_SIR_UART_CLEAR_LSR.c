
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfin_sir_port {scalar_t__ membase; scalar_t__ lsr; } ;


 scalar_t__ OFFSET_LSR ;
 int bfin_read16 (scalar_t__) ;

__attribute__((used)) static inline void SIR_UART_CLEAR_LSR(struct bfin_sir_port *port)
{
 port->lsr = 0;
 bfin_read16(port->membase + OFFSET_LSR);
}
