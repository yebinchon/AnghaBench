
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pci_dev {int dummy; } ;
struct mxser_board {int vector; TYPE_2__* info; TYPE_1__* ports; int irq; } ;
struct TYPE_4__ {int nports; } ;
struct TYPE_3__ {int ioaddr; } ;


 int free_irq (int ,struct mxser_board*) ;
 int pci_release_region (struct pci_dev*,int) ;
 int release_region (int ,int) ;

__attribute__((used)) static void mxser_release_res(struct mxser_board *brd, struct pci_dev *pdev,
  unsigned int irq)
{
 if (irq)
  free_irq(brd->irq, brd);
 if (pdev != ((void*)0)) {




 } else {
  release_region(brd->ports[0].ioaddr, 8 * brd->info->nports);
  release_region(brd->vector, 1);
 }
}
