
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int base; } ;
struct rt2x00_dev {void* rf; TYPE_1__* ops; void* eeprom; TYPE_2__ csr; int dev; } ;
struct pci_dev {int dummy; } ;
struct TYPE_3__ {int rf_size; int eeprom_size; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 void* kzalloc (int ,int ) ;
 int pci_ioremap_bar (struct pci_dev*,int ) ;
 int rt2x00_probe_err (char*) ;
 int rt2x00pci_free_reg (struct rt2x00_dev*) ;
 struct pci_dev* to_pci_dev (int ) ;

__attribute__((used)) static int rt2x00pci_alloc_reg(struct rt2x00_dev *rt2x00dev)
{
 struct pci_dev *pci_dev = to_pci_dev(rt2x00dev->dev);

 rt2x00dev->csr.base = pci_ioremap_bar(pci_dev, 0);
 if (!rt2x00dev->csr.base)
  goto exit;

 rt2x00dev->eeprom = kzalloc(rt2x00dev->ops->eeprom_size, GFP_KERNEL);
 if (!rt2x00dev->eeprom)
  goto exit;

 rt2x00dev->rf = kzalloc(rt2x00dev->ops->rf_size, GFP_KERNEL);
 if (!rt2x00dev->rf)
  goto exit;

 return 0;

exit:
 rt2x00_probe_err("Failed to allocate registers\n");

 rt2x00pci_free_reg(rt2x00dev);

 return -ENOMEM;
}
