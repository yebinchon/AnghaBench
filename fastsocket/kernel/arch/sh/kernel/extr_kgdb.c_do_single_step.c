
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;


 unsigned short STEP_OPCODE ;
 int __raw_readw (long) ;
 int flush_icache_range (long,scalar_t__) ;
 unsigned short* get_step_address (struct pt_regs*) ;
 scalar_t__ instruction_size (int ) ;
 int stepped_address ;
 int stepped_opcode ;

__attribute__((used)) static void do_single_step(struct pt_regs *linux_regs)
{

 unsigned short *addr = get_step_address(linux_regs);

 stepped_address = (int)addr;


 stepped_opcode = __raw_readw((long)addr);
 *addr = STEP_OPCODE;


 flush_icache_range((long)addr, (long)addr +
      instruction_size(stepped_opcode));
}
