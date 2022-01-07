
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
unsigned int instruction_size(unsigned int insn)
{

 switch ((insn & 0xf00f)) {
 case 0x0000:
 case 0x0001:
 case 0x3001:
  return 4;
 }


 switch ((insn & 0xf08f)) {
 case 0x3009:
  return 4;
 }

 return 2;
}
