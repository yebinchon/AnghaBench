
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int * ptr; } ;
struct radeon_cs_parser {TYPE_1__ ib; } ;
struct radeon_cs_packet {unsigned int idx; int count; } ;


 int DRM_INFO (char*,unsigned int,int volatile) ;

void radeon_cs_dump_packet(struct radeon_cs_parser *p,
      struct radeon_cs_packet *pkt)
{
 volatile uint32_t *ib;
 unsigned i;
 unsigned idx;

 ib = p->ib.ptr;
 idx = pkt->idx;
 for (i = 0; i <= (pkt->count + 1); i++, idx++)
  DRM_INFO("ib[%d]=0x%08X\n", idx, ib[idx]);
}
