
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct specialix_board {int flags; int irq; } ;


 int SX_BOARD_ACTIVE ;
 int SX_DEBUG_IRQ ;
 int board_No (struct specialix_board*) ;
 int dprintk (int ,char*,int ,int ) ;
 int free_irq (int ,struct specialix_board*) ;
 int func_enter () ;
 int func_exit () ;
 int turn_ints_off (struct specialix_board*) ;

__attribute__((used)) static void sx_shutdown_board(struct specialix_board *bp)
{
 func_enter();

 if (!(bp->flags & SX_BOARD_ACTIVE)) {
  func_exit();
  return;
 }

 bp->flags &= ~SX_BOARD_ACTIVE;

 dprintk(SX_DEBUG_IRQ, "Freeing IRQ%d for board %d.\n",
   bp->irq, board_No(bp));
 free_irq(bp->irq, bp);
 turn_ints_off(bp);
 func_exit();
}
