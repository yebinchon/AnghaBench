
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sx_port {int board; } ;


 int CHAN_OFFSET (struct sx_port*,int ) ;
 int func_enter2 () ;
 int func_exit () ;
 int hi_hstat ;
 int sx_busy_wait_eq (int ,int ,int,int) ;
 int write_sx_byte (int ,int ,int) ;

__attribute__((used)) static int sx_send_command(struct sx_port *port,
  int command, int mask, int newstat)
{
 func_enter2();
 write_sx_byte(port->board, CHAN_OFFSET(port, hi_hstat), command);
 func_exit();
 return sx_busy_wait_eq(port->board, CHAN_OFFSET(port, hi_hstat), mask,
   newstat);
}
