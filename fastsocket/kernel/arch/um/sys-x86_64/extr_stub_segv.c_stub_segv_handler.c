
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucontext {int uc_mcontext; } ;
struct faultinfo {int dummy; } ;


 int GET_FAULTINFO_FROM_SC (struct faultinfo,int *) ;
 scalar_t__ STUB_DATA ;
 int trap_myself () ;

void __attribute__ ((__section__ (".__syscall_stub")))
stub_segv_handler(int sig)
{
 struct ucontext *uc;

 __asm__ __volatile__("movq %%rdx, %0" : "=g" (uc) :);
 GET_FAULTINFO_FROM_SC(*((struct faultinfo *) STUB_DATA),
         &uc->uc_mcontext);
 trap_myself();
}
