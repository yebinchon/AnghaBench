
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pci_ers_result_t ;
typedef enum pci_ers_result { ____Placeholder_pci_ers_result } pci_ers_result ;




 int PCI_ERS_RESULT_NEED_RESET ;
 int PCI_ERS_RESULT_NONE ;
 int PCI_ERS_RESULT_NO_AER_DRIVER ;


__attribute__((used)) static inline pci_ers_result_t merge_result(enum pci_ers_result orig,
  enum pci_ers_result new)
{
 if (new == PCI_ERS_RESULT_NO_AER_DRIVER)
  return PCI_ERS_RESULT_NO_AER_DRIVER;

 if (new == PCI_ERS_RESULT_NONE)
  return orig;

 switch (orig) {
 case 130:
 case 128:
  orig = new;
  break;
 case 129:
  if (new == PCI_ERS_RESULT_NEED_RESET)
   orig = PCI_ERS_RESULT_NEED_RESET;
  break;
 default:
  break;
 }

 return orig;
}
