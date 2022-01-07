
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct megasas_instance {scalar_t__ ctrl_context; } ;
struct megasas_cmd_fusion {int list; scalar_t__ sync_cmd_idx; int * scmd; } ;
struct fusion_context {int cmd_pool_lock; int cmd_pool; } ;


 scalar_t__ ULONG_MAX ;
 int list_add_tail (int *,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static inline void
megasas_return_cmd_fusion(struct megasas_instance *instance,
     struct megasas_cmd_fusion *cmd)
{
 unsigned long flags;
 struct fusion_context *fusion =
  (struct fusion_context *)instance->ctrl_context;

 spin_lock_irqsave(&fusion->cmd_pool_lock, flags);

 cmd->scmd = ((void*)0);
 cmd->sync_cmd_idx = (u32)ULONG_MAX;
 list_add_tail(&cmd->list, &fusion->cmd_pool);

 spin_unlock_irqrestore(&fusion->cmd_pool_lock, flags);
}
