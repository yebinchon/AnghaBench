
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct qib_devdata {TYPE_3__* cspec; } ;
struct TYPE_6__ {unsigned long long main_int_mask; int num_msix_entries; TYPE_2__* msix_entries; } ;
struct TYPE_4__ {int vector; } ;
struct TYPE_5__ {int arg; TYPE_1__ msix; int mask; } ;


 int free_cpumask_var (int ) ;
 int free_irq (int ,int ) ;
 int irq_set_affinity_hint (int ,int *) ;
 int kr_intgranted ;
 int qib_nomsix (struct qib_devdata*) ;
 scalar_t__ qib_read_kreg64 (struct qib_devdata*,int ) ;
 int qib_write_kreg (struct qib_devdata*,int ,scalar_t__) ;

__attribute__((used)) static void qib_7322_nomsix(struct qib_devdata *dd)
{
 u64 intgranted;
 int n;

 dd->cspec->main_int_mask = ~0ULL;
 n = dd->cspec->num_msix_entries;
 if (n) {
  int i;

  dd->cspec->num_msix_entries = 0;
  for (i = 0; i < n; i++) {
   irq_set_affinity_hint(
     dd->cspec->msix_entries[i].msix.vector, ((void*)0));
   free_cpumask_var(dd->cspec->msix_entries[i].mask);
   free_irq(dd->cspec->msix_entries[i].msix.vector,
      dd->cspec->msix_entries[i].arg);
  }
  qib_nomsix(dd);
 }

 intgranted = qib_read_kreg64(dd, kr_intgranted);
 if (intgranted)
  qib_write_kreg(dd, kr_intgranted, intgranted);
}
