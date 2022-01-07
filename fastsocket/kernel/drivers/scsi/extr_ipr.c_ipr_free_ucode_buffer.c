
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipr_sglist {int num_sg; int order; int * scatterlist; } ;


 int __free_pages (int ,int ) ;
 int kfree (struct ipr_sglist*) ;
 int sg_page (int *) ;

__attribute__((used)) static void ipr_free_ucode_buffer(struct ipr_sglist *sglist)
{
 int i;

 for (i = 0; i < sglist->num_sg; i++)
  __free_pages(sg_page(&sglist->scatterlist[i]), sglist->order);

 kfree(sglist);
}
