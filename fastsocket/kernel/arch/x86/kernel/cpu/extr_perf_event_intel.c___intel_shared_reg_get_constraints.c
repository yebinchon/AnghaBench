
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct perf_event {int dummy; } ;
struct hw_perf_event_extra {int idx; int alloc; scalar_t__ config; int reg; } ;
struct event_constraint {int dummy; } ;
struct er_account {scalar_t__ config; int lock; int ref; int reg; } ;
struct cpu_hw_events {TYPE_1__* shared_regs; } ;
struct TYPE_2__ {struct er_account* regs; } ;


 int atomic_inc (int *) ;
 int atomic_read (int *) ;
 struct event_constraint emptyconstraint ;
 scalar_t__ intel_try_alt_er (struct perf_event*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static struct event_constraint *
__intel_shared_reg_get_constraints(struct cpu_hw_events *cpuc,
       struct perf_event *event,
       struct hw_perf_event_extra *reg)
{
 struct event_constraint *c = &emptyconstraint;
 struct er_account *era;
 unsigned long flags;
 int orig_idx = reg->idx;


 if (reg->alloc)
  return ((void*)0);

again:
 era = &cpuc->shared_regs->regs[reg->idx];




 spin_lock_irqsave(&era->lock, flags);

 if (!atomic_read(&era->ref) || era->config == reg->config) {


  era->config = reg->config;
  era->reg = reg->reg;


  atomic_inc(&era->ref);


  reg->alloc = 1;





  c = ((void*)0);
 } else if (intel_try_alt_er(event, orig_idx)) {
  spin_unlock_irqrestore(&era->lock, flags);
  goto again;
 }
 spin_unlock_irqrestore(&era->lock, flags);

 return c;
}
