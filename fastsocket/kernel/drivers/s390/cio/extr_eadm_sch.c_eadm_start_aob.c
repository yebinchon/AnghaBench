
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct subchannel {int lock; } ;
struct eadm_private {int state; } ;
struct aob {int dummy; } ;


 int EADM_NOT_OPER ;
 int EADM_TIMEOUT ;
 int EBUSY ;
 int SCH_TODO_EVAL ;
 int css_sched_sch_todo (struct subchannel*,int ) ;
 struct subchannel* eadm_get_idle_sch () ;
 int eadm_subchannel_set_timeout (struct subchannel*,int ) ;
 int eadm_subchannel_start (struct subchannel*,struct aob*) ;
 struct eadm_private* get_eadm_private (struct subchannel*) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;

__attribute__((used)) static int eadm_start_aob(struct aob *aob)
{
 struct eadm_private *private;
 struct subchannel *sch;
 unsigned long flags;
 int ret;

 sch = eadm_get_idle_sch();
 if (!sch)
  return -EBUSY;

 spin_lock_irqsave(sch->lock, flags);
 eadm_subchannel_set_timeout(sch, EADM_TIMEOUT);
 ret = eadm_subchannel_start(sch, aob);
 if (!ret)
  goto out_unlock;


 eadm_subchannel_set_timeout(sch, 0);
 private = get_eadm_private(sch);
 private->state = EADM_NOT_OPER;
 css_sched_sch_todo(sch, SCH_TODO_EVAL);

out_unlock:
 spin_unlock_irqrestore(sch->lock, flags);

 return ret;
}
