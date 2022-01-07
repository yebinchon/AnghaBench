
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {unsigned int length; } ;


 struct scatterlist* scatterwalk_sg_next (struct scatterlist*) ;

__attribute__((used)) static int hmac_inconsistent(struct scatterlist *sg, unsigned start,
  unsigned int nbytes)
{
 int offset = 0;

 if (!nbytes)
  return 0;

 for (;;) {
  if (start < offset + sg->length)
   break;

  offset += sg->length;
  sg = scatterwalk_sg_next(sg);
 }
 return (start + nbytes > offset + sg->length);
}
