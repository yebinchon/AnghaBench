
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bas_cardstate {int basstate; int lock; } ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static inline int update_basstate(struct bas_cardstate *ucs,
      int set, int clear)
{
 unsigned long flags;
 int state;

 spin_lock_irqsave(&ucs->lock, flags);
 state = ucs->basstate;
 ucs->basstate = (state & ~clear) | set;
 spin_unlock_irqrestore(&ucs->lock, flags);
 return state;
}
