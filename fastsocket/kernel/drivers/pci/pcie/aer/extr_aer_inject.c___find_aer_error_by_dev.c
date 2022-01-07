
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct pci_dev {int devfn; TYPE_1__* bus; } ;
struct aer_error {int dummy; } ;
struct TYPE_2__ {int number; } ;


 struct aer_error* __find_aer_error (int ,int ,int ) ;
 int pci_domain_nr (TYPE_1__*) ;

__attribute__((used)) static struct aer_error *__find_aer_error_by_dev(struct pci_dev *dev)
{
 int domain = pci_domain_nr(dev->bus);
 if (domain < 0)
  return ((void*)0);
 return __find_aer_error((u16)domain, dev->bus->number, dev->devfn);
}
