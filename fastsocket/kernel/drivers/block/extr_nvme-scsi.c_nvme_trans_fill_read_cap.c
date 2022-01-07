
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
typedef int u32 ;
struct nvme_id_ns {int flbas; int dps; int nsze; TYPE_1__* lbaf; } ;
typedef int __be64 ;
typedef int __be32 ;
struct TYPE_2__ {int ds; } ;


 int cpu_to_be32 (int) ;
 int cpu_to_be64 (int) ;
 int le64_to_cpup (int *) ;
 int memcpy (int*,int *,int) ;

__attribute__((used)) static void nvme_trans_fill_read_cap(u8 *response, struct nvme_id_ns *id_ns,
        u8 cdb16)
{
 u8 flbas;
 u32 lba_length;
 u64 rlba;
 u8 prot_en;
 u8 p_type_lut[4] = {0, 0, 1, 2};
 __be64 tmp_rlba;
 __be32 tmp_rlba_32;
 __be32 tmp_len;

 flbas = (id_ns->flbas) & 0x0F;
 lba_length = (1 << (id_ns->lbaf[flbas].ds));
 rlba = le64_to_cpup(&id_ns->nsze) - 1;
 (id_ns->dps) ? (prot_en = 0x01) : (prot_en = 0);

 if (!cdb16) {
  if (rlba > 0xFFFFFFFF)
   rlba = 0xFFFFFFFF;
  tmp_rlba_32 = cpu_to_be32(rlba);
  tmp_len = cpu_to_be32(lba_length);
  memcpy(response, &tmp_rlba_32, sizeof(u32));
  memcpy(&response[4], &tmp_len, sizeof(u32));
 } else {
  tmp_rlba = cpu_to_be64(rlba);
  tmp_len = cpu_to_be32(lba_length);
  memcpy(response, &tmp_rlba, sizeof(u64));
  memcpy(&response[8], &tmp_len, sizeof(u32));
  response[12] = (p_type_lut[id_ns->dps & 0x3] << 1) | prot_en;



 }
}
