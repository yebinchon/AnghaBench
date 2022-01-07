
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
typedef int MPT_ADAPTER ;


 int mptsas_cleanup_fw_event_q (int *) ;
 int mptsas_fw_event_off (int *) ;
 int * pci_get_drvdata (struct pci_dev*) ;

void
mptsas_shutdown(struct pci_dev *pdev)
{
 MPT_ADAPTER *ioc = pci_get_drvdata(pdev);

 mptsas_fw_event_off(ioc);
 mptsas_cleanup_fw_event_q(ioc);
}
