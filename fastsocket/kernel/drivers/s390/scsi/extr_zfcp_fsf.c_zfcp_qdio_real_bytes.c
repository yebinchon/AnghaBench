
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {scalar_t__ length; } ;


 struct scatterlist* sg_next (struct scatterlist*) ;

__attribute__((used)) static inline
unsigned int zfcp_qdio_real_bytes(struct scatterlist *sg)
{
 unsigned int real_bytes = 0;

 for (; sg; sg = sg_next(sg))
  real_bytes += sg->length;

 return real_bytes;
}
