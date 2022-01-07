
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct qib_pportdata {scalar_t__ sdma_descq_removed; scalar_t__ sdma_descq_added; scalar_t__ sdma_descq_cnt; } ;



__attribute__((used)) static inline u16 qib_sdma_descq_freecnt(const struct qib_pportdata *ppd)
{
 return ppd->sdma_descq_cnt -
  (ppd->sdma_descq_added - ppd->sdma_descq_removed) - 1;
}
