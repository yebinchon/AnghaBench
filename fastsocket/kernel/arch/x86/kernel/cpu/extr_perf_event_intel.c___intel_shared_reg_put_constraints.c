
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hw_perf_event_extra {size_t idx; scalar_t__ alloc; } ;
struct er_account {int ref; } ;
struct cpu_hw_events {TYPE_1__* shared_regs; } ;
struct TYPE_2__ {struct er_account* regs; } ;


 int atomic_dec (int *) ;

__attribute__((used)) static void
__intel_shared_reg_put_constraints(struct cpu_hw_events *cpuc,
       struct hw_perf_event_extra *reg)
{
 struct er_account *era;






 if (!reg->alloc)
  return;

 era = &cpuc->shared_regs->regs[reg->idx];


 atomic_dec(&era->ref);


 reg->alloc = 0;
}
