
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {int length; } ;


 struct scatterlist* sg_next (struct scatterlist*) ;

__attribute__((used)) static int get_sg_count(struct scatterlist *sg_list, int nbytes)
{
 struct scatterlist *sg = sg_list;
 int sg_nents = 0;

 while (nbytes) {
  sg_nents++;
  if (sg->length > nbytes)
   break;
  nbytes -= sg->length;
  sg = sg_next(sg);
 }

 return sg_nents;
}
