
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdio_uart_port {scalar_t__ regs_offset; int func; } ;


 unsigned char sdio_readb (int ,scalar_t__,int *) ;

__attribute__((used)) static inline unsigned int sdio_in(struct sdio_uart_port *port, int offset)
{
 unsigned char c;
 c = sdio_readb(port->func, port->regs_offset + offset, ((void*)0));
 return c;
}
