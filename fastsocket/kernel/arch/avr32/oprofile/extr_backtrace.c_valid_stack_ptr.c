
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread_info {int dummy; } ;


 unsigned long THREAD_SIZE ;

__attribute__((used)) static inline int valid_stack_ptr(struct thread_info *tinfo, unsigned long p)
{
 return (p > (unsigned long)tinfo)
  && (p < (unsigned long)tinfo + THREAD_SIZE - 3);
}
