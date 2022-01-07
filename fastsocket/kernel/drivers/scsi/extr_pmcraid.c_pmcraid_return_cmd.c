
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmcraid_instance {int free_pool_lock; int free_cmd_pool; } ;
struct pmcraid_cmd {int free_list; struct pmcraid_instance* drv_inst; } ;


 int list_add_tail (int *,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void pmcraid_return_cmd(struct pmcraid_cmd *cmd)
{
 struct pmcraid_instance *pinstance = cmd->drv_inst;
 unsigned long lock_flags;

 spin_lock_irqsave(&pinstance->free_pool_lock, lock_flags);
 list_add_tail(&cmd->free_list, &pinstance->free_cmd_pool);
 spin_unlock_irqrestore(&pinstance->free_pool_lock, lock_flags);
}
