
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {int dummy; } ;


 struct scatterlist* sg_next (struct scatterlist*) ;

__attribute__((used)) static inline
unsigned int zfcp_qdio_sbale_count(struct scatterlist *sg)
{
 unsigned int count = 0;

 for (; sg; sg = sg_next(sg))
  count++;

 return count;
}
