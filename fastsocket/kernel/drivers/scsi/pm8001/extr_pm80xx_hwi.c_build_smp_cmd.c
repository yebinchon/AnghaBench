
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct smp_req {void* len_ip_ir; void* device_id; int tag; } ;
typedef int __le32 ;


 int SMP_DIRECT ;
 void* cpu_to_le32 (int) ;

__attribute__((used)) static void build_smp_cmd(u32 deviceID, __le32 hTag,
   struct smp_req *psmp_cmd, int mode, int length)
{
 psmp_cmd->tag = hTag;
 psmp_cmd->device_id = cpu_to_le32(deviceID);
 if (mode == SMP_DIRECT) {
  length = length - 4;
  psmp_cmd->len_ip_ir = cpu_to_le32(length << 16);
 } else {
  psmp_cmd->len_ip_ir = cpu_to_le32(1|(1 << 1));
 }
}
