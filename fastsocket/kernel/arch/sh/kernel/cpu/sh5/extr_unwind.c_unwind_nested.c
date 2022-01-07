
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;


 unsigned long __MEMORY_START ;
 int sh64_unwind_inner (struct pt_regs*) ;

__attribute__((used)) static void unwind_nested (unsigned long pc, unsigned long fp)
{
 if ((fp >= __MEMORY_START) &&
     ((fp & 7) == 0)) {
  sh64_unwind_inner((struct pt_regs *) fp);
 }
}
