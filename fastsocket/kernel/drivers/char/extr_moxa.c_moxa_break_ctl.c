
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {struct moxa_port* driver_data; } ;
struct moxa_port {int tableAddr; } ;


 int FC_SendBreak ;
 int FC_StopBreak ;
 int Magic_code ;
 int moxafunc (int ,int ,int ) ;

__attribute__((used)) static int moxa_break_ctl(struct tty_struct *tty, int state)
{
 struct moxa_port *port = tty->driver_data;

 moxafunc(port->tableAddr, state ? FC_SendBreak : FC_StopBreak,
   Magic_code);
 return 0;
}
