
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gameport {int dummy; } ;
struct analog_port {int buttons; int initial; int axes; TYPE_1__* analog; scalar_t__ axtime; int reads; int bads; int gameport; scalar_t__ cooked; } ;
struct TYPE_2__ {int mask; } ;


 int ANALOG_ANY_CHF ;
 scalar_t__ ANALOG_AXIS_TIME ;
 int ANALOG_SAITEK ;
 scalar_t__ analog_button_read (struct analog_port*,char,char) ;
 int* analog_chf ;
 scalar_t__ analog_cooked_read (struct analog_port*) ;
 int analog_decode (TYPE_1__*,int ,int ,size_t) ;
 scalar_t__ gameport_cooked_read (int ,int ,int*) ;
 struct analog_port* gameport_get_drvdata (struct gameport*) ;

__attribute__((used)) static void analog_poll(struct gameport *gameport)
{
 struct analog_port *port = gameport_get_drvdata(gameport);
 int i;

 char saitek = !!(port->analog[0].mask & ANALOG_SAITEK);
 char chf = !!(port->analog[0].mask & ANALOG_ANY_CHF);

 if (port->cooked) {
  port->bads -= gameport_cooked_read(port->gameport, port->axes, &port->buttons);
  if (chf)
   port->buttons = port->buttons ? (1 << analog_chf[port->buttons]) : 0;
  port->reads++;
 } else {
  if (!port->axtime--) {
   port->bads -= analog_cooked_read(port);
   port->bads -= analog_button_read(port, saitek, chf);
   port->reads++;
   port->axtime = ANALOG_AXIS_TIME - 1;
  } else {
   if (!saitek)
    analog_button_read(port, saitek, chf);
  }
 }

 for (i = 0; i < 2; i++)
  if (port->analog[i].mask)
   analog_decode(port->analog + i, port->axes, port->initial, port->buttons);
}
