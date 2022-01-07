
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t* Areg_index ;
 int BUG () ;



 size_t* Dreg_index ;


 int REG_SP ;





 size_t* Rreg_index ;


__attribute__((used)) static int misalignment_reg(unsigned long *registers, unsigned params,
       unsigned opcode, unsigned long disp,
       unsigned long **_register)
{
 params &= 0x7fffffff;

 if (params & 0xffffff00)
  return 0;

 switch (params & 0xff) {
 case 138:
  *_register = &registers[Dreg_index[opcode & 0x03]];
  break;
 case 137:
  *_register = &registers[Dreg_index[opcode >> 2 & 0x03]];
  break;
 case 136:
  *_register = &registers[Dreg_index[opcode >> 4 & 0x03]];
  break;
 case 141:
  *_register = &registers[Areg_index[opcode & 0x03]];
  break;
 case 140:
  *_register = &registers[Areg_index[opcode >> 2 & 0x03]];
  break;
 case 139:
  *_register = &registers[Areg_index[opcode >> 4 & 0x03]];
  break;
 case 133:
  *_register = &registers[Rreg_index[opcode & 0x0f]];
  break;
 case 132:
  *_register = &registers[Rreg_index[opcode >> 2 & 0x0f]];
  break;
 case 131:
  *_register = &registers[Rreg_index[opcode >> 4 & 0x0f]];
  break;
 case 130:
  *_register = &registers[Rreg_index[opcode >> 8 & 0x0f]];
  break;
 case 129:
  *_register = &registers[Rreg_index[opcode >> 12 & 0x0f]];
  break;
 case 135:
  *_register = &registers[Rreg_index[disp & 0x0f]];
  break;
 case 134:
  *_register = &registers[Rreg_index[disp >> 4 & 0x0f]];
  break;
 case 128:
  *_register = &registers[REG_SP >> 2];
  break;

 default:
  BUG();
  return 0;
 }

 return 1;
}
