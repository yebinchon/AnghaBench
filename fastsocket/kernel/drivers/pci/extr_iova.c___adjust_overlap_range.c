
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iova {unsigned long pfn_lo; unsigned long pfn_hi; } ;



__attribute__((used)) static void
__adjust_overlap_range(struct iova *iova,
 unsigned long *pfn_lo, unsigned long *pfn_hi)
{
 if (*pfn_lo < iova->pfn_lo)
  iova->pfn_lo = *pfn_lo;
 if (*pfn_hi > iova->pfn_hi)
  *pfn_lo = iova->pfn_hi + 1;
}
