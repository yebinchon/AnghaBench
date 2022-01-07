
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct bt8xxgpio {int mmio; int gpio; } ;


 int BT848_GPIO_OUT_EN ;
 int BT848_INT_MASK ;
 int BT848_INT_STAT ;
 int bgwrite (int,int ) ;
 int gpiochip_remove (int *) ;
 int iounmap (int ) ;
 int kfree (struct bt8xxgpio*) ;
 int pci_disable_device (struct pci_dev*) ;
 struct bt8xxgpio* pci_get_drvdata (struct pci_dev*) ;
 int pci_resource_len (struct pci_dev*,int ) ;
 int pci_resource_start (struct pci_dev*,int ) ;
 int pci_set_drvdata (struct pci_dev*,int *) ;
 int release_mem_region (int ,int ) ;

__attribute__((used)) static void bt8xxgpio_remove(struct pci_dev *pdev)
{
 struct bt8xxgpio *bg = pci_get_drvdata(pdev);

 gpiochip_remove(&bg->gpio);

 bgwrite(0, BT848_INT_MASK);
 bgwrite(~0x0, BT848_INT_STAT);
 bgwrite(0x0, BT848_GPIO_OUT_EN);

 iounmap(bg->mmio);
 release_mem_region(pci_resource_start(pdev, 0),
      pci_resource_len(pdev, 0));
 pci_disable_device(pdev);

 pci_set_drvdata(pdev, ((void*)0));
 kfree(bg);
}
