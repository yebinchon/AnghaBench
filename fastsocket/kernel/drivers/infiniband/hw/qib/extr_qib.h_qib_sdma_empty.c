
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qib_pportdata {scalar_t__ sdma_descq_added; scalar_t__ sdma_descq_removed; } ;



__attribute__((used)) static inline int qib_sdma_empty(const struct qib_pportdata *ppd)
{
 return ppd->sdma_descq_added == ppd->sdma_descq_removed;
}
