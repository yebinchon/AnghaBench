
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_cmnd {int dummy; } ;


 int FCP_TMF_TGT_RESET ;
 int zfcp_task_mgmt_function (struct scsi_cmnd*,int ) ;

__attribute__((used)) static int zfcp_scsi_eh_target_reset_handler(struct scsi_cmnd *scpnt)
{
 return zfcp_task_mgmt_function(scpnt, FCP_TMF_TGT_RESET);
}
