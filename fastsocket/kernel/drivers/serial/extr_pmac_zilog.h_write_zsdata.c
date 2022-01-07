
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct uart_pmac_port {int data_reg; } ;


 int writeb (int ,int ) ;

__attribute__((used)) static inline void write_zsdata(struct uart_pmac_port *port, u8 data)
{
 writeb(data, port->data_reg);
}
