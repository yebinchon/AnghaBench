
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qib_devdata {int dummy; } ;
struct pci_dev {int dummy; } ;


 int pci_cleanup_aer_uncorrect_error_status (struct pci_dev*) ;
 struct qib_devdata* pci_get_drvdata (struct pci_dev*) ;
 int qib_devinfo (struct pci_dev*,char*) ;
 int qib_init (struct qib_devdata*,int) ;

__attribute__((used)) static void
qib_pci_resume(struct pci_dev *pdev)
{
 struct qib_devdata *dd = pci_get_drvdata(pdev);
 qib_devinfo(pdev, "QIB resume function called\n");
 pci_cleanup_aer_uncorrect_error_status(pdev);





 qib_init(dd, 1);
}
