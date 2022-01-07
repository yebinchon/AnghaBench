
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct moxa_port {int tableAddr; int lineCtrl; } ;


 int DTR_ON ;
 int FC_LineControl ;
 int RTS_ON ;
 int moxafunc (int ,int ,int ) ;

__attribute__((used)) static void MoxaPortLineCtrl(struct moxa_port *port, int dtr, int rts)
{
 u8 mode = 0;

 if (dtr)
  mode |= DTR_ON;
 if (rts)
  mode |= RTS_ON;
 port->lineCtrl = mode;
 moxafunc(port->tableAddr, FC_LineControl, mode);
}
