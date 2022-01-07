
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct uart_pmac_port {int control_reg; } ;


 scalar_t__ readb (int ) ;
 int writeb (scalar_t__,int ) ;

__attribute__((used)) static inline u8 read_zsreg(struct uart_pmac_port *port, u8 reg)
{
 if (reg != 0)
  writeb(reg, port->control_reg);
 return readb(port->control_reg);
}
