
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {int dummy; } ;


 int KM_IRQ0 ;
 void* kmap_atomic (int ,int ) ;
 int sg_page (struct scatterlist*) ;

__attribute__((used)) static inline unsigned long sg_kmap_atomic(struct scatterlist *sgl, int idx)
{
 void *addr = kmap_atomic(sg_page(sgl + idx), KM_IRQ0);
 return (unsigned long)addr;
}
