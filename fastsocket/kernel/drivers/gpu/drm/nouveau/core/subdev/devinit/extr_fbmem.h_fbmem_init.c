
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct io_mapping {int dummy; } ;


 struct io_mapping* io_mapping_create_wc (int ,int ) ;
 int pci_resource_len (struct pci_dev*,int) ;
 int pci_resource_start (struct pci_dev*,int) ;

__attribute__((used)) static inline struct io_mapping *
fbmem_init(struct pci_dev *pdev)
{
 return io_mapping_create_wc(pci_resource_start(pdev, 1),
        pci_resource_len(pdev, 1));
}
