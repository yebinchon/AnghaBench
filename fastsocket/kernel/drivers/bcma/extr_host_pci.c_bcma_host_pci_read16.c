
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct bcma_device {TYPE_1__* bus; } ;
struct TYPE_2__ {scalar_t__ mmio; } ;


 scalar_t__ bcma_host_pci_provide_access_to_core (struct bcma_device*) ;
 scalar_t__ ioread16 (scalar_t__) ;

__attribute__((used)) static u16 bcma_host_pci_read16(struct bcma_device *core, u16 offset)
{
 offset += bcma_host_pci_provide_access_to_core(core);
 return ioread16(core->bus->mmio + offset);
}
