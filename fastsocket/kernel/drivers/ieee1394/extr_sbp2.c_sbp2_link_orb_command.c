
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct sbp2_lu {int protocol_work; int shost; int ne; int cmd_orb_lock; scalar_t__ last_orb_dma; struct sbp2_command_orb* last_orb; int command_block_agent_addr; struct sbp2_fwhost_info* hi; } ;
struct sbp2_fwhost_info {TYPE_2__* host; } ;
struct sbp2_command_orb {scalar_t__ next_ORB_hi; int next_ORB_lo; } ;
struct sbp2_command_info {scalar_t__ command_orb_dma; struct sbp2_command_orb command_orb; } ;
typedef scalar_t__ quadlet_t ;
typedef scalar_t__ dma_addr_t ;
struct TYPE_3__ {int parent; } ;
struct TYPE_4__ {TYPE_1__ device; int node_id; } ;


 int DMA_TO_DEVICE ;
 scalar_t__ ORB_SET_NODE_ID (int ) ;
 int PREPARE_WORK (int *,int ) ;
 scalar_t__ SBP2_DOORBELL_OFFSET ;
 scalar_t__ SBP2_ORB_POINTER_OFFSET ;
 int cpu_to_be32 (scalar_t__) ;
 int dma_sync_single_for_cpu (int ,scalar_t__,int,int ) ;
 int dma_sync_single_for_device (int ,scalar_t__,int,int ) ;
 int sbp2util_cpu_to_be32_buffer (scalar_t__*,int) ;
 scalar_t__ sbp2util_node_write_no_wait (int ,int ,scalar_t__*,size_t) ;
 int sbp2util_write_doorbell ;
 int sbp2util_write_orb_pointer ;
 int schedule_work (int *) ;
 int scsi_block_requests (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wmb () ;

__attribute__((used)) static void sbp2_link_orb_command(struct sbp2_lu *lu,
      struct sbp2_command_info *cmd)
{
 struct sbp2_fwhost_info *hi = lu->hi;
 struct sbp2_command_orb *last_orb;
 dma_addr_t last_orb_dma;
 u64 addr = lu->command_block_agent_addr;
 quadlet_t data[2];
 size_t length;
 unsigned long flags;


 spin_lock_irqsave(&lu->cmd_orb_lock, flags);
 last_orb = lu->last_orb;
 last_orb_dma = lu->last_orb_dma;
 if (!last_orb) {




  addr += SBP2_ORB_POINTER_OFFSET;
  data[0] = ORB_SET_NODE_ID(hi->host->node_id);
  data[1] = cmd->command_orb_dma;
  sbp2util_cpu_to_be32_buffer(data, 8);
  length = 8;
 } else {







  dma_sync_single_for_cpu(hi->host->device.parent, last_orb_dma,
     sizeof(struct sbp2_command_orb),
     DMA_TO_DEVICE);
  last_orb->next_ORB_lo = cpu_to_be32(cmd->command_orb_dma);
  wmb();

  last_orb->next_ORB_hi = 0;
  dma_sync_single_for_device(hi->host->device.parent,
        last_orb_dma,
        sizeof(struct sbp2_command_orb),
        DMA_TO_DEVICE);
  addr += SBP2_DOORBELL_OFFSET;
  data[0] = 0;
  length = 4;
 }
 lu->last_orb = &cmd->command_orb;
 lu->last_orb_dma = cmd->command_orb_dma;
 spin_unlock_irqrestore(&lu->cmd_orb_lock, flags);

 if (sbp2util_node_write_no_wait(lu->ne, addr, data, length)) {
  scsi_block_requests(lu->shost);
  PREPARE_WORK(&lu->protocol_work,
        last_orb ? sbp2util_write_doorbell:
     sbp2util_write_orb_pointer);
  schedule_work(&lu->protocol_work);
 }
}
