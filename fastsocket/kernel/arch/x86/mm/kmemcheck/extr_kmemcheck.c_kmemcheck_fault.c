
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int flags; scalar_t__ cs; } ;
typedef int pte_t ;


 int KMEMCHECK_READ ;
 int KMEMCHECK_WRITE ;
 int X86_VM_MASK ;
 scalar_t__ __KERNEL_CS ;
 int kmemcheck_access (struct pt_regs*,unsigned long,int ) ;
 int * kmemcheck_pte_lookup (unsigned long) ;
 int kmemcheck_show (struct pt_regs*) ;

bool kmemcheck_fault(struct pt_regs *regs, unsigned long address,
 unsigned long error_code)
{
 pte_t *pte;







 if (regs->flags & X86_VM_MASK)
  return 0;
 if (regs->cs != __KERNEL_CS)
  return 0;

 pte = kmemcheck_pte_lookup(address);
 if (!pte)
  return 0;

 if (error_code & 2)
  kmemcheck_access(regs, address, KMEMCHECK_WRITE);
 else
  kmemcheck_access(regs, address, KMEMCHECK_READ);

 kmemcheck_show(regs);
 return 1;
}
