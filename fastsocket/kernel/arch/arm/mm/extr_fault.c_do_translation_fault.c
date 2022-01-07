
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;



__attribute__((used)) static int
do_translation_fault(unsigned long addr, unsigned int fsr,
       struct pt_regs *regs)
{
 return 0;
}
