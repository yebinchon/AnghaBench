
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sn_pcibus_provider {int (* dma_unmap ) (struct pci_dev*,int ,int ) ;} ;
struct pci_dev {int dummy; } ;
struct device {int * bus; } ;
typedef int dma_addr_t ;


 int BUG_ON (int) ;
 struct sn_pcibus_provider* SN_PCIDEV_BUSPROVIDER (struct pci_dev*) ;
 int free_pages (unsigned long,int ) ;
 int get_order (size_t) ;
 int pci_bus_type ;
 int stub1 (struct pci_dev*,int ,int ) ;
 struct pci_dev* to_pci_dev (struct device*) ;

__attribute__((used)) static void sn_dma_free_coherent(struct device *dev, size_t size, void *cpu_addr,
     dma_addr_t dma_handle)
{
 struct pci_dev *pdev = to_pci_dev(dev);
 struct sn_pcibus_provider *provider = SN_PCIDEV_BUSPROVIDER(pdev);

 BUG_ON(dev->bus != &pci_bus_type);

 provider->dma_unmap(pdev, dma_handle, 0);
 free_pages((unsigned long)cpu_addr, get_order(size));
}
