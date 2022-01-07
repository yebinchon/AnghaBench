
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct st_buffer {int frp_segs; int reserved_page_order; int cleared; int * reserved_pages; } ;


 int PAGE_SIZE ;
 int memset (int ,int ,int) ;
 int page_address (int ) ;

__attribute__((used)) static void clear_buffer(struct st_buffer * st_bp)
{
 int i;

 for (i=0; i < st_bp->frp_segs; i++)
  memset(page_address(st_bp->reserved_pages[i]), 0,
         PAGE_SIZE << st_bp->reserved_page_order);
 st_bp->cleared = 1;
}
