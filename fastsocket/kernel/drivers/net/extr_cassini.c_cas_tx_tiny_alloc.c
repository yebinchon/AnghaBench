
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct cas {int * tx_tiny_bufs; int * tx_tiny_dvma; struct pci_dev* pdev; } ;


 int N_TX_RINGS ;
 int TX_TINY_BUF_BLOCK ;
 int cas_tx_tiny_free (struct cas*) ;
 int pci_alloc_consistent (struct pci_dev*,int ,int *) ;

__attribute__((used)) static int cas_tx_tiny_alloc(struct cas *cp)
{
 struct pci_dev *pdev = cp->pdev;
 int i;

 for (i = 0; i < N_TX_RINGS; i++) {
  cp->tx_tiny_bufs[i] =
   pci_alloc_consistent(pdev, TX_TINY_BUF_BLOCK,
          &cp->tx_tiny_dvma[i]);
  if (!cp->tx_tiny_bufs[i]) {
   cas_tx_tiny_free(cp);
   return -1;
  }
 }
 return 0;
}
