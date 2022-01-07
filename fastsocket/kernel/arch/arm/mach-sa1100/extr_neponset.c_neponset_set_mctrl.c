
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct uart_port {scalar_t__ mapbase; } ;


 int MDM_CTL0_DTR1 ;
 int MDM_CTL0_DTR2 ;
 int MDM_CTL0_RTS1 ;
 int MDM_CTL0_RTS2 ;
 int MDM_CTL_0 ;
 int TIOCM_DTR ;
 int TIOCM_RTS ;
 scalar_t__ _Ser1UTCR0 ;
 scalar_t__ _Ser3UTCR0 ;

__attribute__((used)) static void neponset_set_mctrl(struct uart_port *port, u_int mctrl)
{
 u_int mdm_ctl0 = MDM_CTL_0;

 if (port->mapbase == _Ser1UTCR0) {
  if (mctrl & TIOCM_RTS)
   mdm_ctl0 &= ~MDM_CTL0_RTS2;
  else
   mdm_ctl0 |= MDM_CTL0_RTS2;

  if (mctrl & TIOCM_DTR)
   mdm_ctl0 &= ~MDM_CTL0_DTR2;
  else
   mdm_ctl0 |= MDM_CTL0_DTR2;
 } else if (port->mapbase == _Ser3UTCR0) {
  if (mctrl & TIOCM_RTS)
   mdm_ctl0 &= ~MDM_CTL0_RTS1;
  else
   mdm_ctl0 |= MDM_CTL0_RTS1;

  if (mctrl & TIOCM_DTR)
   mdm_ctl0 &= ~MDM_CTL0_DTR1;
  else
   mdm_ctl0 |= MDM_CTL0_DTR1;
 }

 MDM_CTL_0 = mdm_ctl0;
}
