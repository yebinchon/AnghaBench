
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ variant; } ;
struct TYPE_4__ {TYPE_1__ pci; } ;
struct adapter {TYPE_2__ params; } ;


 scalar_t__ PCI_VARIANT_PCIE ;

__attribute__((used)) static inline unsigned int is_pcie(const struct adapter *adap)
{
 return adap->params.pci.variant == PCI_VARIANT_PCIE;
}
