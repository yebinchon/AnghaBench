
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;


 unsigned long PF_INSTR ;
 scalar_t__ TASK_SIZE ;
 int check_prefetch_opcode (struct pt_regs*,unsigned char*,unsigned char,int*) ;
 scalar_t__ convert_ip_to_linear (int ,struct pt_regs*) ;
 int current ;
 scalar_t__ probe_kernel_address (unsigned char*,unsigned char) ;
 scalar_t__ user_mode (struct pt_regs*) ;

__attribute__((used)) static int
is_prefetch(struct pt_regs *regs, unsigned long error_code, unsigned long addr)
{
 unsigned char *max_instr;
 unsigned char *instr;
 int prefetch = 0;





 if (error_code & PF_INSTR)
  return 0;

 instr = (void *)convert_ip_to_linear(current, regs);
 max_instr = instr + 15;

 if (user_mode(regs) && instr >= (unsigned char *)TASK_SIZE)
  return 0;

 while (instr < max_instr) {
  unsigned char opcode;

  if (probe_kernel_address(instr, opcode))
   break;

  instr++;

  if (!check_prefetch_opcode(regs, instr, opcode, &prefetch))
   break;
 }
 return prefetch;
}
