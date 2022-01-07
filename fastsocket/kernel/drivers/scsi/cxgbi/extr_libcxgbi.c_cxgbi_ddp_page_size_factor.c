
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DDP_PGIDX_MAX ;
 int* ddp_page_order ;

void cxgbi_ddp_page_size_factor(int *pgsz_factor)
{
 int i;

 for (i = 0; i < DDP_PGIDX_MAX; i++)
  pgsz_factor[i] = ddp_page_order[i];
}
