
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct isci_pci_info {int dummy; } ;


 struct isci_pci_info* pci_get_drvdata (struct pci_dev*) ;

__attribute__((used)) static inline struct isci_pci_info *to_pci_info(struct pci_dev *pdev)
{
 return pci_get_drvdata(pdev);
}
