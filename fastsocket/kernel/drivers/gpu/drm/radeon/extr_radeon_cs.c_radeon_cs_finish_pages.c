
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ ptr; } ;
struct radeon_cs_parser {size_t chunk_ib_idx; TYPE_1__ ib; struct radeon_cs_chunk* chunks; } ;
struct radeon_cs_chunk {int last_copied_page; int last_page_index; int length_dw; scalar_t__ user_ptr; } ;


 scalar_t__ DRM_COPY_FROM_USER (scalar_t__,scalar_t__,int) ;
 int EFAULT ;
 int PAGE_SIZE ;

int radeon_cs_finish_pages(struct radeon_cs_parser *p)
{
 struct radeon_cs_chunk *ibc = &p->chunks[p->chunk_ib_idx];
 int i;
 int size = PAGE_SIZE;

 for (i = ibc->last_copied_page + 1; i <= ibc->last_page_index; i++) {
  if (i == ibc->last_page_index) {
   size = (ibc->length_dw * 4) % PAGE_SIZE;
   if (size == 0)
    size = PAGE_SIZE;
  }

  if (DRM_COPY_FROM_USER(p->ib.ptr + (i * (PAGE_SIZE/4)),
           ibc->user_ptr + (i * PAGE_SIZE),
           size))
   return -EFAULT;
 }
 return 0;
}
