
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__* vip ;
struct pci_controller {int dummy; } ;
typedef int dma_addr_t ;


 scalar_t__ APECS_IOC_TBIA ;
 int mb () ;
 int wmb () ;

void
apecs_pci_tbi(struct pci_controller *hose, dma_addr_t start, dma_addr_t end)
{
 wmb();
 *(vip)APECS_IOC_TBIA = 0;
 mb();
}
