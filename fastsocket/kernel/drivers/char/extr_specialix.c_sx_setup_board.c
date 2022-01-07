
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct specialix_board {int flags; int irq; } ;


 int IRQF_DISABLED ;
 int IRQF_SHARED ;
 int SX_BOARD_ACTIVE ;
 int SX_BOARD_IS_PCI ;
 int request_irq (int ,int ,int,char*,struct specialix_board*) ;
 int sx_interrupt ;
 int turn_ints_on (struct specialix_board*) ;

__attribute__((used)) static int sx_setup_board(struct specialix_board *bp)
{
 int error;

 if (bp->flags & SX_BOARD_ACTIVE)
  return 0;

 if (bp->flags & SX_BOARD_IS_PCI)
  error = request_irq(bp->irq, sx_interrupt,
   IRQF_DISABLED | IRQF_SHARED, "specialix IO8+", bp);
 else
  error = request_irq(bp->irq, sx_interrupt,
   IRQF_DISABLED, "specialix IO8+", bp);

 if (error)
  return error;

 turn_ints_on(bp);
 bp->flags |= SX_BOARD_ACTIVE;

 return 0;
}
