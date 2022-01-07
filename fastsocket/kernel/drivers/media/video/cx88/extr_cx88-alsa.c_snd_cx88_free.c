
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ irq; int pci; int core; } ;
typedef TYPE_1__ snd_cx88_card_t ;


 int cx88_core_put (int ,int ) ;
 int free_irq (scalar_t__,TYPE_1__*) ;
 int pci_disable_device (int ) ;

__attribute__((used)) static int snd_cx88_free(snd_cx88_card_t *chip)
{

 if (chip->irq >= 0)
  free_irq(chip->irq, chip);

 cx88_core_put(chip->core,chip->pci);

 pci_disable_device(chip->pci);
 return 0;
}
