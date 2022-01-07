
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int * ats; } ;


 int kfree (int *) ;

__attribute__((used)) static void ats_free_one(struct pci_dev *dev)
{
 kfree(dev->ats);
 dev->ats = ((void*)0);
}
