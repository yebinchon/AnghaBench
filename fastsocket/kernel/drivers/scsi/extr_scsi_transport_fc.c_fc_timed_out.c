
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_cmnd {int device; } ;
struct fc_rport {scalar_t__ port_state; } ;
typedef enum blk_eh_timer_return { ____Placeholder_blk_eh_timer_return } blk_eh_timer_return ;


 int BLK_EH_NOT_HANDLED ;
 int BLK_EH_RESET_TIMER ;
 scalar_t__ FC_PORTSTATE_BLOCKED ;
 int scsi_target (int ) ;
 struct fc_rport* starget_to_rport (int ) ;

__attribute__((used)) static enum blk_eh_timer_return
fc_timed_out(struct scsi_cmnd *scmd)
{
 struct fc_rport *rport = starget_to_rport(scsi_target(scmd->device));

 if (rport->port_state == FC_PORTSTATE_BLOCKED)
  return BLK_EH_RESET_TIMER;

 return BLK_EH_NOT_HANDLED;
}
