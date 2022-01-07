
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radeon_device {int dummy; } ;
struct radeon_cs_packet {int opcode; } ;


 int DRM_ERROR (char*,int) ;
 int EINVAL ;
__attribute__((used)) static int si_vm_packet3_ce_check(struct radeon_device *rdev,
      u32 *ib, struct radeon_cs_packet *pkt)
{
 switch (pkt->opcode) {
 case 133:
 case 132:
 case 131:
 case 134:
 case 129:
 case 128:
 case 136:
 case 135:
 case 130:
 case 137:
  break;
 default:
  DRM_ERROR("Invalid CE packet3: 0x%x\n", pkt->opcode);
  return -EINVAL;
 }
 return 0;
}
