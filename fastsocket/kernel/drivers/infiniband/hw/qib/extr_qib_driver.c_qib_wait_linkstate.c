
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct qib_pportdata {int state_wanted; int lflags; int lflags_lock; int state_wait; } ;


 int EBUSY ;
 int ETIMEDOUT ;
 int msecs_to_jiffies (int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wait_event_interruptible_timeout (int ,int,int ) ;

int qib_wait_linkstate(struct qib_pportdata *ppd, u32 state, int msecs)
{
 int ret;
 unsigned long flags;

 spin_lock_irqsave(&ppd->lflags_lock, flags);
 if (ppd->state_wanted) {
  spin_unlock_irqrestore(&ppd->lflags_lock, flags);
  ret = -EBUSY;
  goto bail;
 }
 ppd->state_wanted = state;
 spin_unlock_irqrestore(&ppd->lflags_lock, flags);
 wait_event_interruptible_timeout(ppd->state_wait,
      (ppd->lflags & state),
      msecs_to_jiffies(msecs));
 spin_lock_irqsave(&ppd->lflags_lock, flags);
 ppd->state_wanted = 0;
 spin_unlock_irqrestore(&ppd->lflags_lock, flags);

 if (!(ppd->lflags & state))
  ret = -ETIMEDOUT;
 else
  ret = 0;
bail:
 return ret;
}
