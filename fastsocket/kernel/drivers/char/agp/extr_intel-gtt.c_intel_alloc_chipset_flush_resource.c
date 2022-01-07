
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* bridge_dev; int ifp_resource; } ;
struct TYPE_3__ {int bus; } ;


 int PAGE_SIZE ;
 int PCIBIOS_MIN_MEM ;
 TYPE_2__ intel_private ;
 int pci_bus_alloc_resource (int ,int *,int ,int ,int ,int ,int ,TYPE_1__*) ;
 int pcibios_align_resource ;

__attribute__((used)) static int intel_alloc_chipset_flush_resource(void)
{
 int ret;
 ret = pci_bus_alloc_resource(intel_private.bridge_dev->bus, &intel_private.ifp_resource, PAGE_SIZE,
         PAGE_SIZE, PCIBIOS_MIN_MEM, 0,
         pcibios_align_resource, intel_private.bridge_dev);

 return ret;
}
