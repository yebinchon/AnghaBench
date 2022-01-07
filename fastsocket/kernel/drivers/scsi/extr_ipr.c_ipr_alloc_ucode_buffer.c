
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {int dummy; } ;
struct page {int dummy; } ;
struct ipr_sglist {int order; int num_sg; struct scatterlist* scatterlist; } ;


 int GFP_KERNEL ;
 int IPR_MAX_SGLIST ;
 int PAGE_SIZE ;
 int __free_pages (int ,int) ;
 struct page* alloc_pages (int ,int) ;
 int get_order (int) ;
 int ipr_trace ;
 int kfree (struct ipr_sglist*) ;
 struct ipr_sglist* kzalloc (int,int ) ;
 int sg_init_table (struct scatterlist*,int) ;
 int sg_page (struct scatterlist*) ;
 int sg_set_page (struct scatterlist*,struct page*,int ,int ) ;

__attribute__((used)) static struct ipr_sglist *ipr_alloc_ucode_buffer(int buf_len)
{
 int sg_size, order, bsize_elem, num_elem, i, j;
 struct ipr_sglist *sglist;
 struct scatterlist *scatterlist;
 struct page *page;


 sg_size = buf_len / (IPR_MAX_SGLIST - 1);


 order = get_order(sg_size);


 bsize_elem = PAGE_SIZE * (1 << order);


 if (buf_len % bsize_elem)
  num_elem = (buf_len / bsize_elem) + 1;
 else
  num_elem = buf_len / bsize_elem;


 sglist = kzalloc(sizeof(struct ipr_sglist) +
    (sizeof(struct scatterlist) * (num_elem - 1)),
    GFP_KERNEL);

 if (sglist == ((void*)0)) {
  ipr_trace;
  return ((void*)0);
 }

 scatterlist = sglist->scatterlist;
 sg_init_table(scatterlist, num_elem);

 sglist->order = order;
 sglist->num_sg = num_elem;


 for (i = 0; i < num_elem; i++) {
  page = alloc_pages(GFP_KERNEL, order);
  if (!page) {
   ipr_trace;


   for (j = i - 1; j >= 0; j--)
    __free_pages(sg_page(&scatterlist[j]), order);
   kfree(sglist);
   return ((void*)0);
  }

  sg_set_page(&scatterlist[i], page, 0, 0);
 }

 return sglist;
}
