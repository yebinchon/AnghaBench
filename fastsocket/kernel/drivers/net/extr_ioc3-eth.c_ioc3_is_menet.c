
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {TYPE_1__* bus; } ;
struct TYPE_2__ {int * parent; } ;


 scalar_t__ ioc3_adjacent_is_ioc3 (struct pci_dev*,int) ;

__attribute__((used)) static int ioc3_is_menet(struct pci_dev *pdev)
{
 return pdev->bus->parent == ((void*)0) &&
        ioc3_adjacent_is_ioc3(pdev, 0) &&
        ioc3_adjacent_is_ioc3(pdev, 1) &&
        ioc3_adjacent_is_ioc3(pdev, 2);
}
