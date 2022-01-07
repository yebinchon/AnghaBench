
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct fw_card {int dummy; } ;
typedef int __be32 ;


 int EAGAIN ;
 int EIO ;


 int SCODE_100 ;
 int TCODE_LOCK_COMPARE_SWAP ;
 int cpu_to_be32 (int) ;
 int fw_run_transaction (struct fw_card*,int ,int,int,int ,int ,int*,int) ;

__attribute__((used)) static int manage_channel(struct fw_card *card, int irm_id, int generation,
  u32 channels_mask, u64 offset, bool allocate, __be32 data[2])
{
 __be32 c, all, old;
 int i, retry = 5;

 old = all = allocate ? cpu_to_be32(~0) : 0;

 for (i = 0; i < 32; i++) {
  if (!(channels_mask & 1 << i))
   continue;

  c = cpu_to_be32(1 << (31 - i));
  if ((old & c) != (all & c))
   continue;

  data[0] = old;
  data[1] = old ^ c;
  switch (fw_run_transaction(card, TCODE_LOCK_COMPARE_SWAP,
        irm_id, generation, SCODE_100,
        offset, data, 8)) {
  case 128:

   return allocate ? -EAGAIN : i;

  case 129:
   if (data[0] == old)
    return i;

   old = data[0];


   if ((data[0] & c) == (data[1] & c))
    continue;


  default:
   if (retry--)
    i--;
  }
 }

 return -EIO;
}
