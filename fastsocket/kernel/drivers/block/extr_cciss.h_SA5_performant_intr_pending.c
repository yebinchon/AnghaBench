
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ vaddr; scalar_t__ msix_vector; scalar_t__ msi_vector; } ;
typedef TYPE_1__ ctlr_info_t ;


 scalar_t__ SA5_INTR_STATUS ;
 scalar_t__ SA5_OUTDB_STATUS ;
 unsigned long SA5_OUTDB_STATUS_PERF_BIT ;
 unsigned long readl (scalar_t__) ;

__attribute__((used)) static unsigned long SA5_performant_intr_pending(ctlr_info_t *h)
{
 unsigned long register_value = readl(h->vaddr + SA5_INTR_STATUS);

 if (!register_value)
  return 0;

 if (h->msi_vector || h->msix_vector)
  return 1;


 register_value = readl(h->vaddr + SA5_OUTDB_STATUS);
 return register_value & SA5_OUTDB_STATUS_PERF_BIT;
}
