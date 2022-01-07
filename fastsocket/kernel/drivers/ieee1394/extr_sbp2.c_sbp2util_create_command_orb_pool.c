
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sbp2_lu {int cmd_orb_completed; TYPE_3__* hi; } ;
struct sbp2_command_orb {int dummy; } ;
struct sbp2_command_info {void* command_orb_dma; int list; void* sge_dma; int scatter_gather_element; int command_orb; } ;
struct device {int dummy; } ;
struct TYPE_6__ {TYPE_2__* host; } ;
struct TYPE_4__ {struct device* parent; } ;
struct TYPE_5__ {TYPE_1__ device; } ;


 int DMA_TO_DEVICE ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int SBP2_MAX_CMDS ;
 void* dma_map_single (struct device*,int *,int,int ) ;
 scalar_t__ dma_mapping_error (struct device*,void*) ;
 int dma_unmap_single (struct device*,void*,int,int ) ;
 int kfree (struct sbp2_command_info*) ;
 struct sbp2_command_info* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 scalar_t__ sbp2_serialize_io ;

__attribute__((used)) static int sbp2util_create_command_orb_pool(struct sbp2_lu *lu)
{
 struct sbp2_command_info *cmd;
 struct device *dmadev = lu->hi->host->device.parent;
 int i, orbs = sbp2_serialize_io ? 2 : SBP2_MAX_CMDS;

 for (i = 0; i < orbs; i++) {
  cmd = kzalloc(sizeof(*cmd), GFP_KERNEL);
  if (!cmd)
   goto failed_alloc;

  cmd->command_orb_dma =
      dma_map_single(dmadev, &cmd->command_orb,
       sizeof(struct sbp2_command_orb),
       DMA_TO_DEVICE);
  if (dma_mapping_error(dmadev, cmd->command_orb_dma))
   goto failed_orb;

  cmd->sge_dma =
      dma_map_single(dmadev, &cmd->scatter_gather_element,
       sizeof(cmd->scatter_gather_element),
       DMA_TO_DEVICE);
  if (dma_mapping_error(dmadev, cmd->sge_dma))
   goto failed_sge;

  INIT_LIST_HEAD(&cmd->list);
  list_add_tail(&cmd->list, &lu->cmd_orb_completed);
 }
 return 0;

failed_sge:
 dma_unmap_single(dmadev, cmd->command_orb_dma,
    sizeof(struct sbp2_command_orb), DMA_TO_DEVICE);
failed_orb:
 kfree(cmd);
failed_alloc:
 return -ENOMEM;
}
