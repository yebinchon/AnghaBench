
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long long u64 ;
struct qib_devdata {unsigned long long (* f_portcntr ) (scalar_t__,int ) ;scalar_t__ pport; } ;
struct pci_dev {int dummy; } ;
typedef int pci_ers_result_t ;


 int PCI_ERS_RESULT_NEED_RESET ;
 int PCI_ERS_RESULT_RECOVERED ;
 int QIBPORTCNTR_WORDRCV ;
 struct qib_devdata* pci_get_drvdata (struct pci_dev*) ;
 int qib_devinfo (struct pci_dev*,char*,unsigned long long,int ) ;
 unsigned long long stub1 (scalar_t__,int ) ;

__attribute__((used)) static pci_ers_result_t
qib_pci_mmio_enabled(struct pci_dev *pdev)
{
 u64 words = 0U;
 struct qib_devdata *dd = pci_get_drvdata(pdev);
 pci_ers_result_t ret = PCI_ERS_RESULT_RECOVERED;

 if (dd && dd->pport) {
  words = dd->f_portcntr(dd->pport, QIBPORTCNTR_WORDRCV);
  if (words == ~0ULL)
   ret = PCI_ERS_RESULT_NEED_RESET;
 }
 qib_devinfo(pdev,
  "QIB mmio_enabled function called, read wordscntr %Lx, returning %d\n",
  words, ret);
 return ret;
}
