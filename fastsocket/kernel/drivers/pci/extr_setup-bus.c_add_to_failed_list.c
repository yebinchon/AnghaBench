
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource_list_x {int dummy; } ;
struct resource {int dummy; } ;
struct pci_dev {int dummy; } ;


 int add_to_list (struct resource_list_x*,struct pci_dev*,struct resource*,int ) ;

__attribute__((used)) static void add_to_failed_list(struct resource_list_x *head,
    struct pci_dev *dev, struct resource *res)
{
 add_to_list(head, dev, res, 0);
}
