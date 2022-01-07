
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;


 int PCI_CAP_ID_MSIX ;
 int check_req_msi (struct pci_dev*,int) ;
 int check_req_msix (struct pci_dev*,int) ;
 int msi_quota_for_device (struct pci_dev*,int) ;

__attribute__((used)) static int rtas_msi_check_device(struct pci_dev *pdev, int nvec, int type)
{
 int quota, rc;

 if (type == PCI_CAP_ID_MSIX)
  rc = check_req_msix(pdev, nvec);
 else
  rc = check_req_msi(pdev, nvec);

 if (rc)
  return rc;

 quota = msi_quota_for_device(pdev, nvec);

 if (quota && quota < nvec)
  return quota;

 return 0;
}
