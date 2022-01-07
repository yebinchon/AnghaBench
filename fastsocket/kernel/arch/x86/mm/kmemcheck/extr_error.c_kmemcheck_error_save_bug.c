
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pt_regs {int dummy; } ;
struct TYPE_2__ {int skip; int max_entries; int entries; scalar_t__ nr_entries; } ;
struct kmemcheck_error {TYPE_1__ trace; int trace_entries; int regs; int type; } ;


 int ARRAY_SIZE (int ) ;
 int KMEMCHECK_ERROR_BUG ;
 struct kmemcheck_error* error_next_wr () ;
 int kmemcheck_tasklet ;
 int memcpy (int *,struct pt_regs*,int) ;
 int save_stack_trace (TYPE_1__*) ;
 int tasklet_hi_schedule_first (int *) ;

void kmemcheck_error_save_bug(struct pt_regs *regs)
{
 struct kmemcheck_error *e;

 e = error_next_wr();
 if (!e)
  return;

 e->type = KMEMCHECK_ERROR_BUG;

 memcpy(&e->regs, regs, sizeof(*regs));

 e->trace.nr_entries = 0;
 e->trace.entries = e->trace_entries;
 e->trace.max_entries = ARRAY_SIZE(e->trace_entries);
 e->trace.skip = 1;
 save_stack_trace(&e->trace);

 tasklet_hi_schedule_first(&kmemcheck_tasklet);
}
