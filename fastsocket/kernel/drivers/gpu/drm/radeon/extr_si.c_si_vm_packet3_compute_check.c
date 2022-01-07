
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct radeon_device {int dummy; } ;
struct radeon_cs_packet {size_t idx; int opcode; int count; } ;


 int DRM_ERROR (char*,int) ;
 int EINVAL ;
 int si_vm_reg_valid (size_t) ;

__attribute__((used)) static int si_vm_packet3_compute_check(struct radeon_device *rdev,
           u32 *ib, struct radeon_cs_packet *pkt)
{
 u32 idx = pkt->idx + 1;
 u32 idx_value = ib[idx];
 u32 start_reg, reg, i;

 switch (pkt->opcode) {
 case 144:
 case 140:
 case 158:
 case 152:
 case 151:
 case 161:
 case 128:
 case 159:
 case 160:
 case 143:
 case 137:
 case 157:
 case 141:
 case 155:
 case 134:
 case 130:
 case 146:
 case 142:
 case 133:
 case 150:
 case 149:
 case 148:
 case 139:
 case 138:
 case 136:
 case 135:
 case 147:
 case 131:
 case 132:
 case 145:
  break;
 case 154:
  if ((idx_value & 0xf00) == 0) {
   reg = ib[idx + 3] * 4;
   if (!si_vm_reg_valid(reg))
    return -EINVAL;
  }
  break;
 case 129:
  if ((idx_value & 0xf00) == 0) {
   start_reg = ib[idx + 1] * 4;
   if (idx_value & 0x10000) {
    if (!si_vm_reg_valid(start_reg))
     return -EINVAL;
   } else {
    for (i = 0; i < (pkt->count - 2); i++) {
     reg = start_reg + (4 * i);
     if (!si_vm_reg_valid(reg))
      return -EINVAL;
    }
   }
  }
  break;
 case 156:
  if (idx_value & 0x100) {
   reg = ib[idx + 5] * 4;
   if (!si_vm_reg_valid(reg))
    return -EINVAL;
  }
  break;
 case 153:
  if (idx_value & 0x2) {
   reg = ib[idx + 3] * 4;
   if (!si_vm_reg_valid(reg))
    return -EINVAL;
  }
  break;
 default:
  DRM_ERROR("Invalid Compute packet3: 0x%x\n", pkt->opcode);
  return -EINVAL;
 }
 return 0;
}
