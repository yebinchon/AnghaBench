
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ start; scalar_t__ end; } ;
struct pci_controller {TYPE_1__ io_resource; scalar_t__ pci_io_size; } ;
typedef scalar_t__ resource_size_t ;



__attribute__((used)) static resource_size_t pcibios_io_size(const struct pci_controller *hose)
{



 return hose->io_resource.end - hose->io_resource.start + 1;

}
