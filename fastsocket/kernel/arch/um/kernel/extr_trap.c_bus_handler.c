
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct uml_pt_regs {int dummy; } ;
struct TYPE_3__ {int * fault_catcher; } ;
struct TYPE_4__ {TYPE_1__ thread; } ;


 int UML_LONGJMP (int *,int) ;
 TYPE_2__* current ;
 int relay_signal (int,struct uml_pt_regs*) ;

void bus_handler(int sig, struct uml_pt_regs *regs)
{
 if (current->thread.fault_catcher != ((void*)0))
  UML_LONGJMP(current->thread.fault_catcher, 1);
 else relay_signal(sig, regs);
}
