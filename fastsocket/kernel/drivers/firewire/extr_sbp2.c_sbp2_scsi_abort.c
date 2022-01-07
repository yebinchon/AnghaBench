
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct scsi_cmnd {TYPE_1__* device; } ;
struct sbp2_logical_unit {TYPE_2__* tgt; } ;
struct TYPE_4__ {int bus_id; } ;
struct TYPE_3__ {struct sbp2_logical_unit* hostdata; } ;


 int SUCCESS ;
 int fw_notify (char*,int ) ;
 int sbp2_agent_reset (struct sbp2_logical_unit*) ;
 int sbp2_cancel_orbs (struct sbp2_logical_unit*) ;

__attribute__((used)) static int sbp2_scsi_abort(struct scsi_cmnd *cmd)
{
 struct sbp2_logical_unit *lu = cmd->device->hostdata;

 fw_notify("%s: sbp2_scsi_abort\n", lu->tgt->bus_id);
 sbp2_agent_reset(lu);
 sbp2_cancel_orbs(lu);

 return SUCCESS;
}
