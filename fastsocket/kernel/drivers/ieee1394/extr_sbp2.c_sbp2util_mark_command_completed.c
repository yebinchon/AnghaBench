
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct sbp2_lu {int cmd_orb_completed; TYPE_4__* ud; } ;
struct sbp2_command_info {int list; TYPE_5__* Current_SCpnt; } ;
struct TYPE_11__ {int sc_data_direction; } ;
struct TYPE_10__ {TYPE_3__* ne; } ;
struct TYPE_9__ {TYPE_2__* host; } ;
struct TYPE_7__ {int parent; } ;
struct TYPE_8__ {TYPE_1__ device; } ;


 int dma_unmap_sg (int ,int ,scalar_t__,int ) ;
 int list_move_tail (int *,int *) ;
 scalar_t__ scsi_sg_count (TYPE_5__*) ;
 int scsi_sglist (TYPE_5__*) ;

__attribute__((used)) static void sbp2util_mark_command_completed(struct sbp2_lu *lu,
         struct sbp2_command_info *cmd)
{
 if (scsi_sg_count(cmd->Current_SCpnt))
  dma_unmap_sg(lu->ud->ne->host->device.parent,
        scsi_sglist(cmd->Current_SCpnt),
        scsi_sg_count(cmd->Current_SCpnt),
        cmd->Current_SCpnt->sc_data_direction);
 list_move_tail(&cmd->list, &lu->cmd_orb_completed);
}
