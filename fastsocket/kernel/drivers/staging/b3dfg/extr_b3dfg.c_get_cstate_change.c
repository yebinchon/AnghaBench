
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct b3dfg_dev {unsigned long cstate_tstamp; int cstate_lock; } ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static unsigned long get_cstate_change(struct b3dfg_dev *fgdev)
{
 unsigned long flags, when;

 spin_lock_irqsave(&fgdev->cstate_lock, flags);
 when = fgdev->cstate_tstamp;
 spin_unlock_irqrestore(&fgdev->cstate_lock, flags);
 return when;
}
