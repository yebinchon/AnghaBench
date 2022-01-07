
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jmp_buf ;


 scalar_t__ UML_SETJMP (int *) ;
 void stub1 (void*,void const*,int) ;

unsigned long __do_user_copy(void *to, const void *from, int n,
        void **fault_addr, jmp_buf **fault_catcher,
        void (*op)(void *to, const void *from,
     int n), int *faulted_out)
{
 unsigned long *faddrp = (unsigned long *) fault_addr, ret;

 jmp_buf jbuf;
 *fault_catcher = &jbuf;
 if (UML_SETJMP(&jbuf) == 0) {
  (*op)(to, from, n);
  ret = 0;
  *faulted_out = 0;
 }
 else {
  ret = *faddrp;
  *faulted_out = 1;
 }
 *fault_addr = ((void*)0);
 *fault_catcher = ((void*)0);
 return ret;
}
