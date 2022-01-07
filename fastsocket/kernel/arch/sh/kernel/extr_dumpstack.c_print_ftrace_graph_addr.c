
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread_info {int dummy; } ;
struct stacktrace_ops {int dummy; } ;



__attribute__((used)) static inline void
print_ftrace_graph_addr(unsigned long addr, void *data,
   const struct stacktrace_ops *ops,
   struct thread_info *tinfo, int *graph)
{ }
