
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sbp2_logical_unit {scalar_t__ command_block_agent_address; int generation; TYPE_1__* tgt; } ;
struct fw_device {int max_speed; int card; } ;
typedef int d ;
typedef int __be32 ;
struct TYPE_2__ {int node_id; } ;


 scalar_t__ SBP2_AGENT_RESET ;
 int TCODE_WRITE_QUADLET_REQUEST ;
 int fw_run_transaction (int ,int ,int ,int ,int ,scalar_t__,int *,int) ;
 struct fw_device* target_device (TYPE_1__*) ;

__attribute__((used)) static void sbp2_agent_reset(struct sbp2_logical_unit *lu)
{
 struct fw_device *device = target_device(lu->tgt);
 __be32 d = 0;

 fw_run_transaction(device->card, TCODE_WRITE_QUADLET_REQUEST,
      lu->tgt->node_id, lu->generation, device->max_speed,
      lu->command_block_agent_address + SBP2_AGENT_RESET,
      &d, sizeof(d));
}
