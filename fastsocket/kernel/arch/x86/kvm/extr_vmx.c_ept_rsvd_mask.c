
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned long long u64 ;
struct TYPE_2__ {int x86_phys_bits; } ;


 TYPE_1__ boot_cpu_data ;

__attribute__((used)) static u64 ept_rsvd_mask(u64 spte, int level)
{
 int i;
 u64 mask = 0;

 for (i = 51; i > boot_cpu_data.x86_phys_bits; i--)
  mask |= (1ULL << i);

 if (level > 2)

  mask |= 0xf8;
 else if (level == 2) {
  if (spte & (1ULL << 7))

   mask |= 0x1ff000;
  else

   mask |= 0x78;
 }

 return mask;
}
