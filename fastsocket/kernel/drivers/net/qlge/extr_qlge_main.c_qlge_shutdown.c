
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;


 int PMSG_SUSPEND ;
 int qlge_suspend (struct pci_dev*,int ) ;

__attribute__((used)) static void qlge_shutdown(struct pci_dev *pdev)
{
 qlge_suspend(pdev, PMSG_SUSPEND);
}
