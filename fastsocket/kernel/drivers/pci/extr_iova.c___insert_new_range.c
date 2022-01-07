
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iova_domain {int rbroot; } ;
struct iova {unsigned long pfn_hi; unsigned long pfn_lo; } ;


 struct iova* alloc_iova_mem () ;
 int iova_insert_rbtree (int *,struct iova*) ;

__attribute__((used)) static struct iova *
__insert_new_range(struct iova_domain *iovad,
 unsigned long pfn_lo, unsigned long pfn_hi)
{
 struct iova *iova;

 iova = alloc_iova_mem();
 if (!iova)
  return iova;

 iova->pfn_hi = pfn_hi;
 iova->pfn_lo = pfn_lo;
 iova_insert_rbtree(&iovad->rbroot, iova);
 return iova;
}
