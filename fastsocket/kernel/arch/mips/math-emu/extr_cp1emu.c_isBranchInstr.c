
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mips_instruction ;


 int MIPSInst_FUNC (int ) ;
 int MIPSInst_OPCODE (int ) ;
 int MIPSInst_RS (int ) ;
 int MIPSInst_RT (int ) ;
 int bc_op ;
__attribute__((used)) static int isBranchInstr(mips_instruction * i)
{
 switch (MIPSInst_OPCODE(*i)) {
 case 128:
  switch (MIPSInst_FUNC(*i)) {
  case 131:
  case 129:
   return 1;
  }
  break;

 case 154:
  switch (MIPSInst_RT(*i)) {
  case 143:
  case 151:
  case 140:
  case 148:
  case 142:
  case 150:
  case 141:
  case 149:
   return 1;
  }
  break;

 case 133:
 case 132:
 case 130:
 case 153:
 case 139:
 case 145:
 case 147:
 case 152:
 case 138:
 case 144:
 case 146:
  return 1;

 case 137:
 case 136:
 case 134:
 case 135:
  if (MIPSInst_RS(*i) == bc_op)
   return 1;
  break;
 }

 return 0;
}
