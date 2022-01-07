
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
typedef enum pci_bar_type { ____Placeholder_pci_bar_type } pci_bar_type ;



__attribute__((used)) static inline int pci_iov_resource_bar(struct pci_dev *dev, int resno,
           enum pci_bar_type *type)
{
 return 0;
}
