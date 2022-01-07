
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int cntlstat; } ;
struct TYPE_7__ {TYPE_1__ parport; } ;
struct TYPE_8__ {TYPE_2__ ctrl; } ;
struct TYPE_10__ {TYPE_3__ perif; } ;
struct TYPE_9__ {int irq_on; int lock; } ;


 int MACEISA_PAR_CTXA_IRQ ;
 int MACEISA_PAR_CTXB_IRQ ;
 int MACEISA_PAR_MERR_IRQ ;
 int MACEPAR_CTLSTAT_RESET ;
 int free_irq (int ,int *) ;
 TYPE_5__* mace ;
 TYPE_4__ parport_ip32_dma ;
 int parport_ip32_dma_interrupt ;
 int parport_ip32_merr_interrupt ;
 int request_irq (int ,int ,int ,char*,int *) ;
 int spin_lock_init (int *) ;
 int writeq (int ,int *) ;

__attribute__((used)) static int parport_ip32_dma_register(void)
{
 int err;

 spin_lock_init(&parport_ip32_dma.lock);
 parport_ip32_dma.irq_on = 1;


 writeq(MACEPAR_CTLSTAT_RESET, &mace->perif.ctrl.parport.cntlstat);


 err = request_irq(MACEISA_PAR_CTXA_IRQ, parport_ip32_dma_interrupt,
     0, "parport_ip32", ((void*)0));
 if (err)
  goto fail_a;
 err = request_irq(MACEISA_PAR_CTXB_IRQ, parport_ip32_dma_interrupt,
     0, "parport_ip32", ((void*)0));
 if (err)
  goto fail_b;







 return 0;





fail_b:
 free_irq(MACEISA_PAR_CTXA_IRQ, ((void*)0));
fail_a:
 return err;
}
