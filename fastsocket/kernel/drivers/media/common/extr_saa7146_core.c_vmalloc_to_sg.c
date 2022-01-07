
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {int dummy; } ;
struct page {int dummy; } ;


 int BUG_ON (int ) ;
 int GFP_KERNEL ;
 int PAGE_SIZE ;
 int PageHighMem (struct page*) ;
 struct scatterlist* kcalloc (int,int,int ) ;
 int kfree (struct scatterlist*) ;
 int sg_init_table (struct scatterlist*,int) ;
 int sg_set_page (struct scatterlist*,struct page*,int ,int ) ;
 struct page* vmalloc_to_page (unsigned char*) ;

__attribute__((used)) static struct scatterlist* vmalloc_to_sg(unsigned char *virt, int nr_pages)
{
 struct scatterlist *sglist;
 struct page *pg;
 int i;

 sglist = kcalloc(nr_pages, sizeof(struct scatterlist), GFP_KERNEL);
 if (((void*)0) == sglist)
  return ((void*)0);
 sg_init_table(sglist, nr_pages);
 for (i = 0; i < nr_pages; i++, virt += PAGE_SIZE) {
  pg = vmalloc_to_page(virt);
  if (((void*)0) == pg)
   goto err;
  BUG_ON(PageHighMem(pg));
  sg_set_page(&sglist[i], pg, PAGE_SIZE, 0);
 }
 return sglist;

 err:
 kfree(sglist);
 return ((void*)0);
}
