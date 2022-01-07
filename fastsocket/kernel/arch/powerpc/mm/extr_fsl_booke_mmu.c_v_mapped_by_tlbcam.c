
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned long phys_addr_t ;
struct TYPE_2__ {unsigned long start; unsigned long limit; unsigned long phys; } ;


 TYPE_1__* tlbcam_addrs ;
 int tlbcam_index ;

phys_addr_t v_mapped_by_tlbcam(unsigned long va)
{
 int b;
 for (b = 0; b < tlbcam_index; ++b)
  if (va >= tlbcam_addrs[b].start && va < tlbcam_addrs[b].limit)
   return tlbcam_addrs[b].phys + (va - tlbcam_addrs[b].start);
 return 0;
}
