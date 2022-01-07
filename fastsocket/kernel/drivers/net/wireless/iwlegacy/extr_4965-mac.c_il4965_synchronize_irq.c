
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct il_priv {int irq_tasklet; TYPE_1__* pci_dev; } ;
struct TYPE_2__ {int irq; } ;


 int synchronize_irq (int ) ;
 int tasklet_kill (int *) ;

__attribute__((used)) static inline void
il4965_synchronize_irq(struct il_priv *il)
{

 synchronize_irq(il->pci_dev->irq);
 tasklet_kill(&il->irq_tasklet);
}
