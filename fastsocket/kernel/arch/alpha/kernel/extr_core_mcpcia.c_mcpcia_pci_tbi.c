
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__* vuip ;
struct pci_controller {int index; } ;
typedef int dma_addr_t ;


 int MCPCIA_HOSE2MID (int ) ;
 scalar_t__ MCPCIA_SG_TBIA (int ) ;
 int mb () ;
 int wmb () ;

void
mcpcia_pci_tbi(struct pci_controller *hose, dma_addr_t start, dma_addr_t end)
{
 wmb();
 *(vuip)MCPCIA_SG_TBIA(MCPCIA_HOSE2MID(hose->index)) = 0;
 mb();
}
