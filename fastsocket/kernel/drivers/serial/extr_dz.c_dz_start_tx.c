
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct uart_port {int dummy; } ;
struct TYPE_2__ {int line; } ;
struct dz_port {TYPE_1__ port; } ;


 int DZ_TCR ;
 int dz_in (struct dz_port*,int ) ;
 int dz_out (struct dz_port*,int ,int) ;
 struct dz_port* to_dport (struct uart_port*) ;

__attribute__((used)) static void dz_start_tx(struct uart_port *uport)
{
 struct dz_port *dport = to_dport(uport);
 u16 tmp, mask = 1 << dport->port.line;

 tmp = dz_in(dport, DZ_TCR);
 tmp |= mask;
 dz_out(dport, DZ_TCR, tmp);
}
