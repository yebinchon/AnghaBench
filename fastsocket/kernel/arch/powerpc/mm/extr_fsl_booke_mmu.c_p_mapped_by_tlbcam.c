
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ phys_addr_t ;
struct TYPE_2__ {scalar_t__ phys; scalar_t__ limit; scalar_t__ start; } ;


 TYPE_1__* tlbcam_addrs ;
 int tlbcam_index ;

unsigned long p_mapped_by_tlbcam(phys_addr_t pa)
{
 int b;
 for (b = 0; b < tlbcam_index; ++b)
  if (pa >= tlbcam_addrs[b].phys
          && pa < (tlbcam_addrs[b].limit-tlbcam_addrs[b].start)
                +tlbcam_addrs[b].phys)
   return tlbcam_addrs[b].start+(pa-tlbcam_addrs[b].phys);
 return 0;
}
