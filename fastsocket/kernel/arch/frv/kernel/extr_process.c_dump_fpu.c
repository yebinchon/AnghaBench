
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct pt_regs {int dummy; } ;
typedef int elf_fpregset_t ;
struct TYPE_5__ {TYPE_1__* user; } ;
struct TYPE_6__ {TYPE_2__ thread; } ;
struct TYPE_4__ {int f; } ;


 TYPE_3__* current ;
 int memcpy (int *,int *,int) ;

int dump_fpu(struct pt_regs *regs, elf_fpregset_t *fpregs)
{
 memcpy(fpregs,
        &current->thread.user->f,
        sizeof(current->thread.user->f));
 return 1;
}
