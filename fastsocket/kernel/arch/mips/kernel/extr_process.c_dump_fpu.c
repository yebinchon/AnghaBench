
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pt_regs {int dummy; } ;
typedef int elf_fpregset_t ;
struct TYPE_3__ {int fpu; } ;
struct TYPE_4__ {TYPE_1__ thread; } ;


 TYPE_2__* current ;
 int memcpy (int *,int *,int) ;

int dump_fpu(struct pt_regs *regs, elf_fpregset_t *r)
{
 memcpy(r, &current->thread.fpu, sizeof(current->thread.fpu));

 return 1;
}
