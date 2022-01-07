
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pci_dev {int dev; } ;


 int KERN_DEBUG ;
 int PCI_LATENCY_TIMER ;
 int dev_printk (int ,int *,char*,int) ;
 int pci_read_config_byte (struct pci_dev*,int ,int*) ;
 int pci_write_config_byte (struct pci_dev*,int ,int) ;
 int pcibios_max_latency ;

void pcibios_set_master(struct pci_dev *dev)
{
 u8 lat;
 pci_read_config_byte(dev, PCI_LATENCY_TIMER, &lat);
 if (lat < 16)
  lat = (64 <= pcibios_max_latency) ? 64 : pcibios_max_latency;
 else if (lat > pcibios_max_latency)
  lat = pcibios_max_latency;
 else
  return;
 dev_printk(KERN_DEBUG, &dev->dev, "setting latency timer to %d\n", lat);
 pci_write_config_byte(dev, PCI_LATENCY_TIMER, lat);
}
