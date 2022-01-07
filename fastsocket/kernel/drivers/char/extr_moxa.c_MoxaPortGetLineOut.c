
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct moxa_port {int lineCtrl; } ;


 int DTR_ON ;
 int RTS_ON ;

__attribute__((used)) static int MoxaPortGetLineOut(struct moxa_port *port, int *dtrState,
  int *rtsState)
{
 if (dtrState)
  *dtrState = !!(port->lineCtrl & DTR_ON);
 if (rtsState)
  *rtsState = !!(port->lineCtrl & RTS_ON);

 return 0;
}
