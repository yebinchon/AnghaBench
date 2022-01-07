
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pt_regs {int ip; } ;
struct perf_callchain_entry {int dummy; } ;
struct TYPE_2__ {scalar_t__ (* is_in_guest ) () ;} ;


 int backtrace_ops ;
 int dump_trace (int *,struct pt_regs*,int *,int *,struct perf_callchain_entry*) ;
 int perf_callchain_store (struct perf_callchain_entry*,int ) ;
 TYPE_1__* perf_guest_cbs ;
 scalar_t__ stub1 () ;

void
perf_callchain_kernel(struct perf_callchain_entry *entry, struct pt_regs *regs)
{
 if (perf_guest_cbs && perf_guest_cbs->is_in_guest()) {

  return;
 }

 perf_callchain_store(entry, regs->ip);

 dump_trace(((void*)0), regs, ((void*)0), &backtrace_ops, entry);
}
