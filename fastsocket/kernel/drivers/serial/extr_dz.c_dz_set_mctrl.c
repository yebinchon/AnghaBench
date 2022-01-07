
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct uart_port {int dummy; } ;
struct TYPE_2__ {scalar_t__ line; } ;
struct dz_port {TYPE_1__ port; } ;


 scalar_t__ DZ_MODEM ;
 int DZ_MODEM_DTR ;
 int DZ_TCR ;
 unsigned int TIOCM_DTR ;
 int dz_in (struct dz_port*,int ) ;
 int dz_out (struct dz_port*,int ,int ) ;
 struct dz_port* to_dport (struct uart_port*) ;

__attribute__((used)) static void dz_set_mctrl(struct uart_port *uport, unsigned int mctrl)
{



 struct dz_port *dport = to_dport(uport);
 u16 tmp;

 if (dport->port.line == DZ_MODEM) {
  tmp = dz_in(dport, DZ_TCR);
  if (mctrl & TIOCM_DTR)
   tmp &= ~DZ_MODEM_DTR;
  else
   tmp |= DZ_MODEM_DTR;
  dz_out(dport, DZ_TCR, tmp);
 }
}
