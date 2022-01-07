
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmcraid_sglist {int num_sg; int order; int * scatterlist; } ;


 int __free_pages (int ,int ) ;
 int kfree (struct pmcraid_sglist*) ;
 int sg_page (int *) ;

__attribute__((used)) static void pmcraid_free_sglist(struct pmcraid_sglist *sglist)
{
 int i;

 for (i = 0; i < sglist->num_sg; i++)
  __free_pages(sg_page(&(sglist->scatterlist[i])),
        sglist->order);

 kfree(sglist);
}
