
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jmp_buf ;


 int __do_copy ;
 unsigned long __do_user_copy (void*,void const*,int,void**,int **,int ,int*) ;

int __do_copy_to_user(void *to, const void *from, int n,
        void **fault_addr, jmp_buf **fault_catcher)
{
 unsigned long fault;
 int faulted;

 fault = __do_user_copy(to, from, n, fault_addr, fault_catcher,
          __do_copy, &faulted);
 if (!faulted)
  return 0;
 else
  return n - (fault - (unsigned long) to);
}
