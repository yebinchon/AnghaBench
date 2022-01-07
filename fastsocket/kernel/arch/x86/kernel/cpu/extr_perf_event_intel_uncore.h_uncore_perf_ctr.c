
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_uncore_box {scalar_t__ pci_dev; } ;


 int uncore_msr_perf_ctr (struct intel_uncore_box*,int) ;
 int uncore_pci_perf_ctr (struct intel_uncore_box*,int) ;

__attribute__((used)) static inline
unsigned uncore_perf_ctr(struct intel_uncore_box *box, int idx)
{
 if (box->pci_dev)
  return uncore_pci_perf_ctr(box, idx);
 else
  return uncore_msr_perf_ctr(box, idx);
}
