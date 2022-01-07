
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sx_board {int dummy; } ;


 int TIMEOUT_1 ;
 int TIMEOUT_2 ;
 int func_enter () ;
 int func_exit () ;
 int read_sx_byte (struct sx_board*,int) ;
 int udelay (int) ;

__attribute__((used)) static int sx_busy_wait_eq(struct sx_board *board,
  int offset, int mask, int correctval)
{
 int i;

 func_enter();

 for (i = 0; i < TIMEOUT_1; i++)
  if ((read_sx_byte(board, offset) & mask) == correctval) {
   func_exit();
   return 1;
  }

 for (i = 0; i < TIMEOUT_2; i++) {
  if ((read_sx_byte(board, offset) & mask) == correctval) {
   func_exit();
   return 1;
  }
  udelay(1);
 }

 func_exit();
 return 0;
}
