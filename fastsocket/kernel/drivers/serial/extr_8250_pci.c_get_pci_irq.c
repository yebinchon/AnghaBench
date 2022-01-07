
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pciserial_board {int flags; } ;
struct pci_dev {int irq; } ;


 int FL_NOIRQ ;

__attribute__((used)) static inline int get_pci_irq(struct pci_dev *dev,
    const struct pciserial_board *board)
{
 if (board->flags & FL_NOIRQ)
  return 0;
 else
  return dev->irq;
}
