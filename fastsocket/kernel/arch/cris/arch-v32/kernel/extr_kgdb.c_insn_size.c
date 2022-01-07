
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int panic (char*,unsigned short,unsigned long) ;

int insn_size(unsigned long pc)
{
 unsigned short opcode = *(unsigned short *)pc;
 int size = 0;

 switch ((opcode & 0x0f00) >> 8) {
 case 0x0:
 case 0x9:
 case 0xb:
  size = 2;
  break;
 case 0xe:
 case 0xf:
  size = 6;
  break;
 case 0xd:

  if ((opcode & 0xff) == 0xff)
   size = 4;
  else
   size = 6;
  break;
 default:
  panic("Couldn't find size of opcode 0x%x at 0x%lx\n", opcode, pc);
 }

 return size;
}
