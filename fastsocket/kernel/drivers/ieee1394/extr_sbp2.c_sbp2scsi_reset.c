
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct scsi_cmnd {TYPE_2__* device; } ;
struct sbp2_lu {int dummy; } ;
struct TYPE_4__ {TYPE_1__* host; } ;
struct TYPE_3__ {scalar_t__* hostdata; } ;


 int SBP2_INFO (char*) ;
 int SUCCESS ;
 int sbp2_agent_reset (struct sbp2_lu*,int) ;
 scalar_t__ sbp2util_node_is_available (struct sbp2_lu*) ;

__attribute__((used)) static int sbp2scsi_reset(struct scsi_cmnd *SCpnt)
{
 struct sbp2_lu *lu = (struct sbp2_lu *)SCpnt->device->host->hostdata[0];

 SBP2_INFO("reset requested");

 if (sbp2util_node_is_available(lu)) {
  SBP2_INFO("generating sbp2 fetch agent reset");
  sbp2_agent_reset(lu, 1);
 }

 return SUCCESS;
}
