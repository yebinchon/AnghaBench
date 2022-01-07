
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pmcraid_ioarcb {int * cdb; int request_type; int resource_handle; int ioarcb_bus_addr; } ;
struct pmcraid_cmd {TYPE_1__* ioa_cb; } ;
typedef int ioarcb_addr ;
typedef int __be64 ;
struct TYPE_2__ {struct pmcraid_ioarcb ioarcb; } ;


 int PMCRAID_ABORT_CMD ;
 int PMCRAID_MAX_CDB_LEN ;
 int REQ_TYPE_IOACMD ;
 int cpu_to_be64 (int ) ;
 int memcpy (int *,int *,int) ;
 int memset (int *,int ,int ) ;

__attribute__((used)) static void pmcraid_prepare_cancel_cmd(
 struct pmcraid_cmd *cmd,
 struct pmcraid_cmd *cmd_to_cancel
)
{
 struct pmcraid_ioarcb *ioarcb = &cmd->ioa_cb->ioarcb;
 __be64 ioarcb_addr = cmd_to_cancel->ioa_cb->ioarcb.ioarcb_bus_addr;




 ioarcb->resource_handle = cmd_to_cancel->ioa_cb->ioarcb.resource_handle;
 ioarcb->request_type = REQ_TYPE_IOACMD;
 memset(ioarcb->cdb, 0, PMCRAID_MAX_CDB_LEN);
 ioarcb->cdb[0] = PMCRAID_ABORT_CMD;





 ioarcb_addr = cpu_to_be64(ioarcb_addr);
 memcpy(&(ioarcb->cdb[2]), &ioarcb_addr, sizeof(ioarcb_addr));
}
