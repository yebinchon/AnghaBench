
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct megasas_instance {int cmd_pool_lock; int cmd_pool; TYPE_1__* pdev; } ;
struct megasas_cmd {int list; TYPE_3__* frame; scalar_t__ frame_count; int * scmd; } ;
struct TYPE_5__ {int cmd; } ;
struct TYPE_6__ {TYPE_2__ hdr; } ;
struct TYPE_4__ {scalar_t__ device; } ;


 int MFI_CMD_INVALID ;
 scalar_t__ PCI_DEVICE_ID_LSI_FURY ;
 scalar_t__ PCI_DEVICE_ID_LSI_FUSION ;
 scalar_t__ PCI_DEVICE_ID_LSI_INVADER ;
 int list_add_tail (int *,int *) ;
 scalar_t__ reset_devices ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

inline void
megasas_return_cmd(struct megasas_instance *instance, struct megasas_cmd *cmd)
{
 unsigned long flags;

 spin_lock_irqsave(&instance->cmd_pool_lock, flags);

 cmd->scmd = ((void*)0);
 cmd->frame_count = 0;
 if ((instance->pdev->device != PCI_DEVICE_ID_LSI_FUSION) &&
     (instance->pdev->device != PCI_DEVICE_ID_LSI_INVADER) &&
     (instance->pdev->device != PCI_DEVICE_ID_LSI_FURY) &&
     (reset_devices))
  cmd->frame->hdr.cmd = MFI_CMD_INVALID;
 list_add_tail(&cmd->list, &instance->cmd_pool);

 spin_unlock_irqrestore(&instance->cmd_pool_lock, flags);
}
