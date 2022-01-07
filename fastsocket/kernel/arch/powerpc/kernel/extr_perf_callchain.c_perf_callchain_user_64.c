
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;
struct perf_callchain_entry {int dummy; } ;



__attribute__((used)) static inline void perf_callchain_user_64(struct perf_callchain_entry *entry,
       struct pt_regs *regs)
{
}
