
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct radeon_device {int dummy; } ;
struct radeon_cs_packet {size_t idx; int opcode; int count; } ;


 int DRM_ERROR (char*,...) ;
 int EINVAL ;
 size_t PACKET3_CP_DMA_CMD_DAIC ;
 size_t PACKET3_CP_DMA_CMD_DAS ;
 size_t PACKET3_CP_DMA_CMD_SAIC ;
 size_t PACKET3_CP_DMA_CMD_SAS ;
 size_t PACKET3_SET_CONFIG_REG_END ;
 size_t PACKET3_SET_CONFIG_REG_START ;
 int si_vm_reg_valid (size_t) ;

__attribute__((used)) static int si_vm_packet3_gfx_check(struct radeon_device *rdev,
       u32 *ib, struct radeon_cs_packet *pkt)
{
 u32 idx = pkt->idx + 1;
 u32 idx_value = ib[idx];
 u32 start_reg, end_reg, reg, i;
 u32 command, info;

 switch (pkt->opcode) {
 case 146:
 case 141:
 case 175:
 case 151:
 case 168:
 case 167:
 case 178:
 case 128:
 case 176:
 case 177:
 case 144:
 case 137:
 case 174:
 case 142:
 case 158:
 case 163:
 case 152:
 case 166:
 case 172:
 case 150:
 case 157:
 case 165:
 case 164:
 case 145:
 case 161:
 case 134:
 case 159:
 case 160:
 case 162:
 case 147:
 case 130:
 case 149:
 case 143:
 case 133:
 case 156:
 case 155:
 case 154:
 case 139:
 case 138:
 case 136:
 case 135:
 case 153:
 case 131:
 case 132:
 case 148:
  break;
 case 171:
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
 case 173:
  if (idx_value & 0x100) {
   reg = ib[idx + 5] * 4;
   if (!si_vm_reg_valid(reg))
    return -EINVAL;
  }
  break;
 case 170:
  if (idx_value & 0x2) {
   reg = ib[idx + 3] * 4;
   if (!si_vm_reg_valid(reg))
    return -EINVAL;
  }
  break;
 case 140:
  start_reg = (idx_value << 2) + PACKET3_SET_CONFIG_REG_START;
  end_reg = 4 * pkt->count + start_reg - 4;
  if ((start_reg < PACKET3_SET_CONFIG_REG_START) ||
      (start_reg >= PACKET3_SET_CONFIG_REG_END) ||
      (end_reg >= PACKET3_SET_CONFIG_REG_END)) {
   DRM_ERROR("bad PACKET3_SET_CONFIG_REG\n");
   return -EINVAL;
  }
  for (i = 0; i < pkt->count; i++) {
   reg = start_reg + (4 * i);
   if (!si_vm_reg_valid(reg))
    return -EINVAL;
  }
  break;
 case 169:
  command = ib[idx + 4];
  info = ib[idx + 1];
  if (command & PACKET3_CP_DMA_CMD_SAS) {

   if (((info & 0x60000000) >> 29) == 0) {
    start_reg = idx_value << 2;
    if (command & PACKET3_CP_DMA_CMD_SAIC) {
     reg = start_reg;
     if (!si_vm_reg_valid(reg)) {
      DRM_ERROR("CP DMA Bad SRC register\n");
      return -EINVAL;
     }
    } else {
     for (i = 0; i < (command & 0x1fffff); i++) {
      reg = start_reg + (4 * i);
      if (!si_vm_reg_valid(reg)) {
       DRM_ERROR("CP DMA Bad SRC register\n");
       return -EINVAL;
      }
     }
    }
   }
  }
  if (command & PACKET3_CP_DMA_CMD_DAS) {

   if (((info & 0x00300000) >> 20) == 0) {
    start_reg = ib[idx + 2];
    if (command & PACKET3_CP_DMA_CMD_DAIC) {
     reg = start_reg;
     if (!si_vm_reg_valid(reg)) {
      DRM_ERROR("CP DMA Bad DST register\n");
      return -EINVAL;
     }
    } else {
     for (i = 0; i < (command & 0x1fffff); i++) {
      reg = start_reg + (4 * i);
      if (!si_vm_reg_valid(reg)) {
       DRM_ERROR("CP DMA Bad DST register\n");
       return -EINVAL;
      }
     }
    }
   }
  }
  break;
 default:
  DRM_ERROR("Invalid GFX packet3: 0x%x\n", pkt->opcode);
  return -EINVAL;
 }
 return 0;
}
