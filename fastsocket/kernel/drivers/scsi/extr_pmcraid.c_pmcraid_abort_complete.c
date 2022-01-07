
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct pmcraid_resource_entry {int sync_reqd; } ;
struct pmcraid_cmd {TYPE_2__* ioa_cb; struct pmcraid_resource_entry* res; int wait_for_completion; } ;
struct TYPE_3__ {int ioasc; } ;
struct TYPE_4__ {TYPE_1__ ioasa; } ;


 int FAILED ;
 scalar_t__ PMCRAID_IOASC_NR_SYNC_REQUIRED ;
 scalar_t__ PMCRAID_IOASC_SENSE_KEY (scalar_t__) ;
 scalar_t__ PMCRAID_IOASC_UA_BUS_WAS_RESET ;
 int SUCCESS ;
 scalar_t__ le32_to_cpu (int ) ;
 int pmcraid_return_cmd (struct pmcraid_cmd*) ;
 int wait_for_completion (int *) ;

__attribute__((used)) static int pmcraid_abort_complete(struct pmcraid_cmd *cancel_cmd)
{
 struct pmcraid_resource_entry *res;
 u32 ioasc;

 wait_for_completion(&cancel_cmd->wait_for_completion);
 res = cancel_cmd->res;
 cancel_cmd->res = ((void*)0);
 ioasc = le32_to_cpu(cancel_cmd->ioa_cb->ioasa.ioasc);






 if (ioasc == PMCRAID_IOASC_UA_BUS_WAS_RESET ||
     ioasc == PMCRAID_IOASC_NR_SYNC_REQUIRED) {
  if (ioasc == PMCRAID_IOASC_NR_SYNC_REQUIRED)
   res->sync_reqd = 1;
  ioasc = 0;
 }


 pmcraid_return_cmd(cancel_cmd);
 return PMCRAID_IOASC_SENSE_KEY(ioasc) ? FAILED : SUCCESS;
}
