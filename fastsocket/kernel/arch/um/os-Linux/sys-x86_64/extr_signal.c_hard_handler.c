
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucontext {int uc_mcontext; } ;
struct sigcontext {int dummy; } ;


 int handle_signal (int,struct sigcontext*) ;

void hard_handler(int sig)
{
 struct ucontext *uc;
 asm("movq %%rdx, %0" : "=r" (uc));

 handle_signal(sig, (struct sigcontext *) &uc->uc_mcontext);
}
