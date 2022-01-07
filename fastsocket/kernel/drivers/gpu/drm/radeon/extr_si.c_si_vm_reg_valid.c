
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



 int DRM_ERROR (char*,int) ;
__attribute__((used)) static bool si_vm_reg_valid(u32 reg)
{

 if (reg >= 0x28000)
  return 1;


 switch (reg) {
 case 152:
 case 153:
 case 128:
 case 139:
 case 138:
 case 137:
 case 136:
 case 131:
 case 134:
 case 133:
 case 132:
 case 129:
 case 135:
 case 130:
 case 151:
 case 148:
 case 149:
 case 150:
 case 141:
 case 144:
 case 143:
 case 142:
 case 145:
 case 147:
 case 146:
 case 140:
  return 1;
 default:
  DRM_ERROR("Invalid register 0x%x in CS\n", reg);
  return 0;
 }
}
