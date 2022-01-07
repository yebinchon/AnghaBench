
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_uncore_box {scalar_t__ pci_dev; } ;


 int uncore_msr_event_ctl (struct intel_uncore_box*,int) ;
 int uncore_pci_event_ctl (struct intel_uncore_box*,int) ;

__attribute__((used)) static inline
unsigned uncore_event_ctl(struct intel_uncore_box *box, int idx)
{
 if (box->pci_dev)
  return uncore_pci_event_ctl(box, idx);
 else
  return uncore_msr_event_ctl(box, idx);
}
