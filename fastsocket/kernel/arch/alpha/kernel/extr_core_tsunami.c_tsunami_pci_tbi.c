
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {unsigned long csr; } ;
struct TYPE_6__ {unsigned long csr; } ;
struct TYPE_8__ {TYPE_2__ tlbiv; TYPE_1__ tlbia; } ;
typedef TYPE_3__ tsunami_pchip ;
struct pci_controller {scalar_t__ index; } ;
typedef int dma_addr_t ;


 TYPE_3__* TSUNAMI_pchip0 ;
 TYPE_3__* TSUNAMI_pchip1 ;
 int mb () ;

void
tsunami_pci_tbi(struct pci_controller *hose, dma_addr_t start, dma_addr_t end)
{
 tsunami_pchip *pchip = hose->index ? TSUNAMI_pchip1 : TSUNAMI_pchip0;
 volatile unsigned long *csr;
 unsigned long value;



 csr = &pchip->tlbia.csr;
 if (((start ^ end) & 0xffff0000) == 0)
  csr = &pchip->tlbiv.csr;



 value = (start & 0xffff0000) >> 12;

 *csr = value;
 mb();
 *csr;
}
