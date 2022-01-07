
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_callchain_entry {int dummy; } ;


 int perf_callchain_store (struct perf_callchain_entry*,unsigned long) ;

__attribute__((used)) static void backtrace_address(void *data, unsigned long addr, int reliable)
{
 struct perf_callchain_entry *entry = data;

 perf_callchain_store(entry, addr);
}
