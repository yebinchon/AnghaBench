
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct device_node {char* full_name; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct device_node* pci_device_to_OF_node (struct pci_dev*) ;
 int sprintf (char*,char*,char*) ;
 struct pci_dev* to_pci_dev (struct device*) ;

__attribute__((used)) static ssize_t pci_show_devspec(struct device *dev,
  struct device_attribute *attr, char *buf)
{
 struct pci_dev *pdev;
 struct device_node *np;

 pdev = to_pci_dev (dev);
 np = pci_device_to_OF_node(pdev);
 if (np == ((void*)0) || np->full_name == ((void*)0))
  return 0;
 return sprintf(buf, "%s", np->full_name);
}
