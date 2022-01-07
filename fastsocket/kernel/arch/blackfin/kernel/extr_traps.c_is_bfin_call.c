
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int get_instruction (unsigned short*,unsigned short*) ;

__attribute__((used)) static bool is_bfin_call(unsigned short *addr)
{
 unsigned short opcode = 0, *ins_addr;
 ins_addr = (unsigned short *)addr;

 if (!get_instruction(&opcode, ins_addr))
  return 0;

 if ((opcode >= 0x0060 && opcode <= 0x0067) ||
     (opcode >= 0x0070 && opcode <= 0x0077))
  return 1;

 ins_addr--;
 if (!get_instruction(&opcode, ins_addr))
  return 0;

 if (opcode >= 0xE300 && opcode <= 0xE3FF)
  return 1;

 return 0;

}
