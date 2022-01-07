
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {scalar_t__ length; } ;


 struct scatterlist* scatterwalk_sg_next (struct scatterlist*) ;
 int sg_is_last (struct scatterlist*) ;

__attribute__((used)) static int sg_count(struct scatterlist *sg_list, int nbytes, int *chained)
{
 struct scatterlist *sg = sg_list;
 int sg_nents = 0;

 *chained = 0;
 while (nbytes > 0) {
  sg_nents++;
  nbytes -= sg->length;
  if (!sg_is_last(sg) && (sg + 1)->length == 0)
   *chained = 1;
  sg = scatterwalk_sg_next(sg);
 }

 return sg_nents;
}
