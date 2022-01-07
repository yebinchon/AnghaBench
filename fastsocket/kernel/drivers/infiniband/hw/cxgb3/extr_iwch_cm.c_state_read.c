
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwch_ep_common {int state; int lock; } ;
typedef enum iwch_ep_state { ____Placeholder_iwch_ep_state } iwch_ep_state ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static enum iwch_ep_state state_read(struct iwch_ep_common *epc)
{
 unsigned long flags;
 enum iwch_ep_state state;

 spin_lock_irqsave(&epc->lock, flags);
 state = epc->state;
 spin_unlock_irqrestore(&epc->lock, flags);
 return state;
}
