
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pmcraid_instance {int ioarrin; int outstanding_cmds; int pending_pool_lock; int pending_cmd_pool; } ;
struct pmcraid_cmd {TYPE_2__* ioa_cb; int free_list; struct pmcraid_instance* drv_inst; } ;
struct TYPE_3__ {int ioarcb_bus_addr; } ;
struct TYPE_4__ {TYPE_1__ ioarcb; } ;


 int atomic_inc (int *) ;
 int iowrite32 (int ,int ) ;
 int le32_to_cpu (int ) ;
 int list_add_tail (int *,int *) ;
 int mb () ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void _pmcraid_fire_command(struct pmcraid_cmd *cmd)
{
 struct pmcraid_instance *pinstance = cmd->drv_inst;
 unsigned long lock_flags;






 spin_lock_irqsave(&pinstance->pending_pool_lock, lock_flags);
 list_add_tail(&cmd->free_list, &pinstance->pending_cmd_pool);
 spin_unlock_irqrestore(&pinstance->pending_pool_lock, lock_flags);
 atomic_inc(&pinstance->outstanding_cmds);


 mb();
 iowrite32(le32_to_cpu(cmd->ioa_cb->ioarcb.ioarcb_bus_addr),
    pinstance->ioarrin);
}
