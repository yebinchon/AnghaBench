
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {int dummy; } ;


 int free_page (unsigned long) ;
 scalar_t__ sg_virt (struct scatterlist*) ;

void zfcp_sg_free_table(struct scatterlist *sg, int count)
{
 int i;

 for (i = 0; i < count; i++, sg++)
  if (sg)
   free_page((unsigned long) sg_virt(sg));
  else
   break;
}
