
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread_info {int dummy; } ;


 int THREAD_SIZE ;

__attribute__((used)) static inline int valid_stack_ptr(struct thread_info *tinfo, void *p)
{
 return p > (void *)tinfo &&
  p < (void *)tinfo + THREAD_SIZE - 3;
}
