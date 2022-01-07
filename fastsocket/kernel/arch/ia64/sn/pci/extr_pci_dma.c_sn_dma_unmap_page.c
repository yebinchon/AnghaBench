
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sn_pcibus_provider {int (* dma_unmap ) (struct pci_dev*,int ,int) ;} ;
struct pci_dev {int dummy; } ;
struct dma_attrs {int dummy; } ;
struct device {int * bus; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
typedef int dma_addr_t ;


 int BUG_ON (int) ;
 struct sn_pcibus_provider* SN_PCIDEV_BUSPROVIDER (struct pci_dev*) ;
 int pci_bus_type ;
 int stub1 (struct pci_dev*,int ,int) ;
 struct pci_dev* to_pci_dev (struct device*) ;

__attribute__((used)) static void sn_dma_unmap_page(struct device *dev, dma_addr_t dma_addr,
         size_t size, enum dma_data_direction dir,
         struct dma_attrs *attrs)
{
 struct pci_dev *pdev = to_pci_dev(dev);
 struct sn_pcibus_provider *provider = SN_PCIDEV_BUSPROVIDER(pdev);

 BUG_ON(dev->bus != &pci_bus_type);

 provider->dma_unmap(pdev, dma_addr, dir);
}
