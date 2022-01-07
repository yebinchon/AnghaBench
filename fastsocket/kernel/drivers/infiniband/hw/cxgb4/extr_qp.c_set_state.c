
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int state; } ;
struct c4iw_qp {int lock; TYPE_1__ attr; } ;
typedef enum c4iw_qp_state { ____Placeholder_c4iw_qp_state } c4iw_qp_state ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void set_state(struct c4iw_qp *qhp, enum c4iw_qp_state state)
{
 unsigned long flag;
 spin_lock_irqsave(&qhp->lock, flag);
 qhp->attr.state = state;
 spin_unlock_irqrestore(&qhp->lock, flag);
}
