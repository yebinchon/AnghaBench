
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct scatter_walk {int offset; TYPE_1__* sg; } ;
struct page {int dummy; } ;
struct TYPE_3__ {int offset; int length; } ;


 int PAGE_MASK ;
 int PAGE_SHIFT ;
 int PAGE_SIZE ;
 int PageSlab (struct page*) ;
 int flush_dcache_page (struct page*) ;
 int scatterwalk_sg_next (TYPE_1__*) ;
 int scatterwalk_start (struct scatter_walk*,int ) ;
 struct page* sg_page (TYPE_1__*) ;

__attribute__((used)) static void scatterwalk_pagedone(struct scatter_walk *walk, int out,
     unsigned int more)
{
 if (out) {
  struct page *page;

  page = sg_page(walk->sg) + ((walk->offset - 1) >> PAGE_SHIFT);
  if (!PageSlab(page))
   flush_dcache_page(page);
 }

 if (more) {
  walk->offset += PAGE_SIZE - 1;
  walk->offset &= PAGE_MASK;
  if (walk->offset >= walk->sg->offset + walk->sg->length)
   scatterwalk_start(walk, scatterwalk_sg_next(walk->sg));
 }
}
