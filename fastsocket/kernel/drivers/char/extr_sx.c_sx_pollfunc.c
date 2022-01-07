
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sx_board {int timer; } ;


 int func_enter () ;
 int func_exit () ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int sx_interrupt (int ,struct sx_board*) ;
 scalar_t__ sx_poll ;

__attribute__((used)) static void sx_pollfunc(unsigned long data)
{
 struct sx_board *board = (struct sx_board *)data;

 func_enter();

 sx_interrupt(0, board);

 mod_timer(&board->timer, jiffies + sx_poll);
 func_exit();
}
