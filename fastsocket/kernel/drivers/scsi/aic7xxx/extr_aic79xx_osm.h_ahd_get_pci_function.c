
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* ahd_dev_softc_t ;
struct TYPE_3__ {int devfn; } ;


 int PCI_FUNC (int ) ;

__attribute__((used)) static inline int
ahd_get_pci_function(ahd_dev_softc_t pci)
{
 return (PCI_FUNC(pci->devfn));
}
