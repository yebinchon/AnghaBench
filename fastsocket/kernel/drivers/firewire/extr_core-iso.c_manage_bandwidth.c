
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fw_card {int dummy; } ;
typedef int __be32 ;


 int BANDWIDTH_AVAILABLE_INITIAL ;
 scalar_t__ CSR_BANDWIDTH_AVAILABLE ;
 scalar_t__ CSR_REGISTER_BASE ;
 int EAGAIN ;
 int EIO ;


 int SCODE_100 ;
 int TCODE_LOCK_COMPARE_SWAP ;
 int be32_to_cpup (int *) ;
 int cpu_to_be32 (int) ;
 int fw_run_transaction (struct fw_card*,int ,int,int,int ,scalar_t__,int *,int) ;

__attribute__((used)) static int manage_bandwidth(struct fw_card *card, int irm_id, int generation,
       int bandwidth, bool allocate, __be32 data[2])
{
 int try, new, old = allocate ? BANDWIDTH_AVAILABLE_INITIAL : 0;






 for (try = 0; try < 5; try++) {
  new = allocate ? old - bandwidth : old + bandwidth;
  if (new < 0 || new > BANDWIDTH_AVAILABLE_INITIAL)
   break;

  data[0] = cpu_to_be32(old);
  data[1] = cpu_to_be32(new);
  switch (fw_run_transaction(card, TCODE_LOCK_COMPARE_SWAP,
    irm_id, generation, SCODE_100,
    CSR_REGISTER_BASE + CSR_BANDWIDTH_AVAILABLE,
    data, 8)) {
  case 128:

   return allocate ? -EAGAIN : bandwidth;

  case 129:
   if (be32_to_cpup(data) == old)
    return bandwidth;

   old = be32_to_cpup(data);

  }
 }

 return -EIO;
}
