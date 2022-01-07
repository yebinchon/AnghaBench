
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct specialix_board {int lock; } ;


 int CD186x_CAR ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int sx_in_off (struct specialix_board*,int) ;
 int sx_out_off (struct specialix_board*,int ,int) ;

__attribute__((used)) static int read_cross_byte(struct specialix_board *bp, int reg, int bit)
{
 int i;
 int t;
 unsigned long flags;

 spin_lock_irqsave(&bp->lock, flags);
 for (i = 0, t = 0; i < 8; i++) {
  sx_out_off(bp, CD186x_CAR, i);
  if (sx_in_off(bp, reg) & bit)
   t |= 1 << i;
 }
 spin_unlock_irqrestore(&bp->lock, flags);

 return t;
}
