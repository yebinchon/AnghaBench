
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int parent; } ;
struct pci_dev {TYPE_1__ dev; int device; int vendor; } ;


 int KERN_ERR ;
 int WARN_ON (int) ;
 int dev_name (TYPE_1__*) ;
 int dev_printk (int ,TYPE_1__*,char*,...) ;
 struct pci_dev* to_pci_dev (int ) ;

__attribute__((used)) static void pci_note_irq_problem(struct pci_dev *pdev, const char *reason)
{
 struct pci_dev *parent = to_pci_dev(pdev->dev.parent);

 dev_printk(KERN_ERR, &pdev->dev,
     "Potentially misrouted IRQ (Bridge %s %04x:%04x)\n",
     dev_name(&parent->dev), parent->vendor, parent->device);
 dev_printk(KERN_ERR, &pdev->dev, "%s\n", reason);
 dev_printk(KERN_ERR, &pdev->dev, "Please report to linux-kernel@vger.kernel.org\n");
 WARN_ON(1);
}
