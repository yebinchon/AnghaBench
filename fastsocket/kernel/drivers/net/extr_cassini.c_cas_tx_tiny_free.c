
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct cas {int ** tx_tiny_bufs; int * tx_tiny_dvma; struct pci_dev* pdev; } ;


 int N_TX_RINGS ;
 int TX_TINY_BUF_BLOCK ;
 int pci_free_consistent (struct pci_dev*,int ,int *,int ) ;

__attribute__((used)) static void cas_tx_tiny_free(struct cas *cp)
{
 struct pci_dev *pdev = cp->pdev;
 int i;

 for (i = 0; i < N_TX_RINGS; i++) {
  if (!cp->tx_tiny_bufs[i])
   continue;

  pci_free_consistent(pdev, TX_TINY_BUF_BLOCK,
        cp->tx_tiny_bufs[i],
        cp->tx_tiny_dvma[i]);
  cp->tx_tiny_bufs[i] = ((void*)0);
 }
}
