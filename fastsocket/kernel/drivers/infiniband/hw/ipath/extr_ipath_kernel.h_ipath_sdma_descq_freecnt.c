
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct ipath_devdata {int ipath_sdma_descq_cnt; int ipath_sdma_descq_added; int ipath_sdma_descq_removed; int ipath_sdma_desc_nreserved; } ;



__attribute__((used)) static inline u16 ipath_sdma_descq_freecnt(const struct ipath_devdata *dd)
{
 return dd->ipath_sdma_descq_cnt -
  (dd->ipath_sdma_descq_added - dd->ipath_sdma_descq_removed) -
  1 - dd->ipath_sdma_desc_nreserved;
}
