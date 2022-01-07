
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;


 int TRAP (struct pt_regs*) ;
 int bus_error_jmp ;
 int fault_except ;
 int fault_type ;
 int longjmp (int ,int) ;

__attribute__((used)) static int handle_fault(struct pt_regs *regs)
{
 fault_except = TRAP(regs);
 switch (TRAP(regs)) {
 case 0x200:
  fault_type = 0;
  break;
 case 0x300:
 case 0x380:
  fault_type = 1;
  break;
 default:
  fault_type = 2;
 }

 longjmp(bus_error_jmp, 1);

 return 0;
}
