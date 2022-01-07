
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;
struct hpp_type1 {int dummy; } ;


 int dev_warn (int *,char*) ;

__attribute__((used)) static void program_hpp_type1(struct pci_dev *dev, struct hpp_type1 *hpp)
{
 if (hpp)
  dev_warn(&dev->dev, "PCI-X settings not supported\n");
}
