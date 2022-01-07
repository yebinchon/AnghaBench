
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ssb_gige {int pci_ops; } ;
struct ssb_device {int dummy; } ;
struct pci_dev {TYPE_1__* bus; } ;
struct TYPE_2__ {int * ops; } ;


 int ENODEV ;
 struct ssb_gige* ssb_get_drvdata (struct ssb_device*) ;
 int ssb_mips_irq (struct ssb_device*) ;

int ssb_gige_map_irq(struct ssb_device *sdev,
       const struct pci_dev *pdev)
{
 struct ssb_gige *dev = ssb_get_drvdata(sdev);

 if (pdev->bus->ops != &dev->pci_ops) {

  return -ENODEV;
 }

 return ssb_mips_irq(sdev) + 2;
}
