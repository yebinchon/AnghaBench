
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct nic {int cmd_lock; TYPE_2__* csr; } ;
typedef int dma_addr_t ;
struct TYPE_3__ {int cmd_lo; int gen_ptr; } ;
struct TYPE_4__ {TYPE_1__ scb; } ;


 unsigned int E100_WAIT_SCB_FAST ;
 unsigned int E100_WAIT_SCB_TIMEOUT ;
 int EAGAIN ;
 int cpu_relax () ;
 scalar_t__ cuc_resume ;
 int ioread8 (int *) ;
 int iowrite32 (int ,int *) ;
 int iowrite8 (scalar_t__,int *) ;
 scalar_t__ likely (int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int udelay (int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int e100_exec_cmd(struct nic *nic, u8 cmd, dma_addr_t dma_addr)
{
 unsigned long flags;
 unsigned int i;
 int err = 0;

 spin_lock_irqsave(&nic->cmd_lock, flags);


 for (i = 0; i < E100_WAIT_SCB_TIMEOUT; i++) {
  if (likely(!ioread8(&nic->csr->scb.cmd_lo)))
   break;
  cpu_relax();
  if (unlikely(i > E100_WAIT_SCB_FAST))
   udelay(5);
 }
 if (unlikely(i == E100_WAIT_SCB_TIMEOUT)) {
  err = -EAGAIN;
  goto err_unlock;
 }

 if (unlikely(cmd != cuc_resume))
  iowrite32(dma_addr, &nic->csr->scb.gen_ptr);
 iowrite8(cmd, &nic->csr->scb.cmd_lo);

err_unlock:
 spin_unlock_irqrestore(&nic->cmd_lock, flags);

 return err;
}
