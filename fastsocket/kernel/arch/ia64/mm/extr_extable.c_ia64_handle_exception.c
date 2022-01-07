
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef long u64 ;
struct pt_regs {long cr_iip; scalar_t__ r9; int r8; } ;
struct exception_table_entry {int cont; } ;
struct TYPE_2__ {long ri; } ;


 int EFAULT ;
 TYPE_1__* ia64_psr (struct pt_regs*) ;

void
ia64_handle_exception (struct pt_regs *regs, const struct exception_table_entry *e)
{
 long fix = (u64) &e->cont + e->cont;

 regs->r8 = -EFAULT;
 if (fix & 4)
  regs->r9 = 0;
 regs->cr_iip = fix & ~0xf;
 ia64_psr(regs)->ri = fix & 0x3;
}
