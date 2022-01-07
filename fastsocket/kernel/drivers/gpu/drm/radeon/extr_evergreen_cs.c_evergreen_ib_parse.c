
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct radeon_ib {size_t length_dw; int * ptr; } ;
struct radeon_device {int dev; } ;
struct radeon_cs_packet {size_t idx; int type; int count; int opcode; scalar_t__ one_reg_wr; } ;


 int EINVAL ;
 int RADEON_CP_PACKET3_GET_OPCODE (int ) ;
 int RADEON_CP_PACKET_GET_COUNT (int ) ;
 int RADEON_CP_PACKET_GET_TYPE (int ) ;



 int dev_err (int ,char*,...) ;
 int evergreen_vm_packet3_check (struct radeon_device*,int *,struct radeon_cs_packet*) ;

int evergreen_ib_parse(struct radeon_device *rdev, struct radeon_ib *ib)
{
 int ret = 0;
 u32 idx = 0;
 struct radeon_cs_packet pkt;

 do {
  pkt.idx = idx;
  pkt.type = RADEON_CP_PACKET_GET_TYPE(ib->ptr[idx]);
  pkt.count = RADEON_CP_PACKET_GET_COUNT(ib->ptr[idx]);
  pkt.one_reg_wr = 0;
  switch (pkt.type) {
  case 130:
   dev_err(rdev->dev, "Packet0 not allowed!\n");
   ret = -EINVAL;
   break;
  case 129:
   idx += 1;
   break;
  case 128:
   pkt.opcode = RADEON_CP_PACKET3_GET_OPCODE(ib->ptr[idx]);
   ret = evergreen_vm_packet3_check(rdev, ib->ptr, &pkt);
   idx += pkt.count + 2;
   break;
  default:
   dev_err(rdev->dev, "Unknown packet type %d !\n", pkt.type);
   ret = -EINVAL;
   break;
  }
  if (ret)
   break;
 } while (idx < ib->length_dw);

 return ret;
}
