
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cxgbi_pagepod_hdr {int dummy; } ;
struct cxgbi_pagepod {unsigned long long* addr; } ;
struct cxgbi_gather_list {unsigned int nelem; int * phys_addr; } ;


 int PPOD_PAGES_MAX ;
 unsigned long long cpu_to_be64 (int ) ;
 int memcpy (struct cxgbi_pagepod*,struct cxgbi_pagepod_hdr*,int) ;

void cxgbi_ddp_ppod_set(struct cxgbi_pagepod *ppod,
   struct cxgbi_pagepod_hdr *hdr,
   struct cxgbi_gather_list *gl, unsigned int gidx)
{
 int i;

 memcpy(ppod, hdr, sizeof(*hdr));
 for (i = 0; i < (PPOD_PAGES_MAX + 1); i++, gidx++) {
  ppod->addr[i] = gidx < gl->nelem ?
    cpu_to_be64(gl->phys_addr[gidx]) : 0ULL;
 }
}
