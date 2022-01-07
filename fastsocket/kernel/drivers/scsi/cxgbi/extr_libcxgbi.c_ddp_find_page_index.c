
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DDP_PGIDX_MAX ;
 unsigned long* ddp_page_shift ;
 int pr_info (char*,unsigned long) ;

__attribute__((used)) static int ddp_find_page_index(unsigned long pgsz)
{
 int i;

 for (i = 0; i < DDP_PGIDX_MAX; i++) {
  if (pgsz == (1UL << ddp_page_shift[i]))
   return i;
 }
 pr_info("ddp page size %lu not supported.\n", pgsz);
 return DDP_PGIDX_MAX;
}
