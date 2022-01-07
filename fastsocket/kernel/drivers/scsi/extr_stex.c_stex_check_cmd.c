
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct status_msg {scalar_t__ scsi_status; int * variable; } ;
struct st_hba {int dummy; } ;
struct st_ccb {TYPE_1__* cmd; } ;
typedef int __le32 ;
struct TYPE_3__ {scalar_t__* cmnd; } ;


 scalar_t__ MGT_CMD ;
 scalar_t__ SAM_STAT_CHECK_CONDITION ;
 scalar_t__ le32_to_cpu (int ) ;
 scalar_t__ scsi_bufflen (TYPE_1__*) ;
 int scsi_set_resid (TYPE_1__*,scalar_t__) ;

__attribute__((used)) static void stex_check_cmd(struct st_hba *hba,
 struct st_ccb *ccb, struct status_msg *resp)
{
 if (ccb->cmd->cmnd[0] == MGT_CMD &&
  resp->scsi_status != SAM_STAT_CHECK_CONDITION)
  scsi_set_resid(ccb->cmd, scsi_bufflen(ccb->cmd) -
   le32_to_cpu(*(__le32 *)&resp->variable[0]));
}
