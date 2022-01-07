
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {int dummy; } ;
struct pmcraid_sglist {int order; int num_sg; struct scatterlist* scatterlist; } ;
struct page {int dummy; } ;


 int GFP_DMA ;
 int GFP_KERNEL ;
 int PAGE_SIZE ;
 int PMCRAID_MAX_IOADLS ;
 int __GFP_ZERO ;
 int __free_pages (int ,int) ;
 struct page* alloc_pages (int,int) ;
 int get_order (int) ;
 int kfree (struct pmcraid_sglist*) ;
 struct pmcraid_sglist* kzalloc (int,int) ;
 int sg_init_table (struct scatterlist*,int) ;
 int sg_page (struct scatterlist*) ;
 int sg_set_page (struct scatterlist*,struct page*,int,int ) ;

__attribute__((used)) static struct pmcraid_sglist *pmcraid_alloc_sglist(int buflen)
{
 struct pmcraid_sglist *sglist;
 struct scatterlist *scatterlist;
 struct page *page;
 int num_elem, i, j;
 int sg_size;
 int order;
 int bsize_elem;

 sg_size = buflen / (PMCRAID_MAX_IOADLS - 1);
 order = (sg_size > 0) ? get_order(sg_size) : 0;
 bsize_elem = PAGE_SIZE * (1 << order);


 if (buflen % bsize_elem)
  num_elem = (buflen / bsize_elem) + 1;
 else
  num_elem = buflen / bsize_elem;


 sglist = kzalloc(sizeof(struct pmcraid_sglist) +
    (sizeof(struct scatterlist) * (num_elem - 1)),
    GFP_KERNEL);

 if (sglist == ((void*)0))
  return ((void*)0);

 scatterlist = sglist->scatterlist;
 sg_init_table(scatterlist, num_elem);
 sglist->order = order;
 sglist->num_sg = num_elem;
 sg_size = buflen;

 for (i = 0; i < num_elem; i++) {
  page = alloc_pages(GFP_KERNEL|GFP_DMA|__GFP_ZERO, order);
  if (!page) {
   for (j = i - 1; j >= 0; j--)
    __free_pages(sg_page(&scatterlist[j]), order);
   kfree(sglist);
   return ((void*)0);
  }

  sg_set_page(&scatterlist[i], page,
   sg_size < bsize_elem ? sg_size : bsize_elem, 0);
  sg_size -= bsize_elem;
 }

 return sglist;
}
