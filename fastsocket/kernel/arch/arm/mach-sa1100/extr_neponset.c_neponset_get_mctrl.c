
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct uart_port {scalar_t__ mapbase; } ;


 int MDM_CTL1_CTS1 ;
 int MDM_CTL1_CTS2 ;
 int MDM_CTL1_DCD1 ;
 int MDM_CTL1_DCD2 ;
 int MDM_CTL1_DSR1 ;
 int MDM_CTL1_DSR2 ;
 int MDM_CTL_1 ;
 int TIOCM_CD ;
 int TIOCM_CTS ;
 int TIOCM_DSR ;
 scalar_t__ _Ser1UTCR0 ;
 scalar_t__ _Ser3UTCR0 ;

__attribute__((used)) static u_int neponset_get_mctrl(struct uart_port *port)
{
 u_int ret = TIOCM_CD | TIOCM_CTS | TIOCM_DSR;
 u_int mdm_ctl1 = MDM_CTL_1;

 if (port->mapbase == _Ser1UTCR0) {
  if (mdm_ctl1 & MDM_CTL1_DCD2)
   ret &= ~TIOCM_CD;
  if (mdm_ctl1 & MDM_CTL1_CTS2)
   ret &= ~TIOCM_CTS;
  if (mdm_ctl1 & MDM_CTL1_DSR2)
   ret &= ~TIOCM_DSR;
 } else if (port->mapbase == _Ser3UTCR0) {
  if (mdm_ctl1 & MDM_CTL1_DCD1)
   ret &= ~TIOCM_CD;
  if (mdm_ctl1 & MDM_CTL1_CTS1)
   ret &= ~TIOCM_CTS;
  if (mdm_ctl1 & MDM_CTL1_DSR1)
   ret &= ~TIOCM_DSR;
 }

 return ret;
}
