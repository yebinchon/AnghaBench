
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfin_sir_port {unsigned int lsr; scalar_t__ membase; } ;


 unsigned int BI ;
 unsigned int FE ;
 unsigned int OE ;
 scalar_t__ OFFSET_LSR ;
 unsigned int PE ;
 unsigned int bfin_read16 (scalar_t__) ;

__attribute__((used)) static inline unsigned int SIR_UART_GET_LSR(struct bfin_sir_port *port)
{
 unsigned int lsr = bfin_read16(port->membase + OFFSET_LSR);
 port->lsr |= (lsr & (BI|FE|PE|OE));
 return lsr | port->lsr;
}
