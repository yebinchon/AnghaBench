
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct linux_binprm {int dummy; } ;
struct TYPE_3__ {int ppl; } ;
struct TYPE_4__ {TYPE_1__ thread; } ;


 int IA32_STACK_TOP ;
 TYPE_2__* current ;
 int ia32_init_pp_list () ;
 int setup_arg_pages (struct linux_binprm*,int ,int) ;

int
ia32_setup_arg_pages (struct linux_binprm *bprm, int executable_stack)
{
 int ret;

 ret = setup_arg_pages(bprm, IA32_STACK_TOP, executable_stack);
 if (!ret) {




  current->thread.ppl = ia32_init_pp_list();
 }

 return ret;
}
