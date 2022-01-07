
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct specialix_board {int lock; } ;


 int func_enter () ;
 int func_exit () ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int sx_in_off (struct specialix_board*,int ) ;

__attribute__((used)) static void turn_ints_off(struct specialix_board *bp)
{
 unsigned long flags;

 func_enter();
 spin_lock_irqsave(&bp->lock, flags);
 (void) sx_in_off(bp, 0);
 spin_unlock_irqrestore(&bp->lock, flags);

 func_exit();
}
