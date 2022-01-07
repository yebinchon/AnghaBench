
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nic {int cmd_lock; TYPE_2__* csr; } ;
struct TYPE_3__ {int cmd_hi; } ;
struct TYPE_4__ {TYPE_1__ scb; } ;


 int e100_write_flush (struct nic*) ;
 int iowrite8 (int ,int *) ;
 int irq_mask_none ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void e100_enable_irq(struct nic *nic)
{
 unsigned long flags;

 spin_lock_irqsave(&nic->cmd_lock, flags);
 iowrite8(irq_mask_none, &nic->csr->scb.cmd_hi);
 e100_write_flush(nic);
 spin_unlock_irqrestore(&nic->cmd_lock, flags);
}
