
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct pmcraid_ioarcb {int hrrq_id; int* cdb; int ioarcb_bus_addr; int resource_handle; int request_type; } ;
struct pmcraid_instance {int num_hrrq; int * hrrq_start_bus_addr; } ;
struct pmcraid_cmd {int hrrq_index; TYPE_1__* ioa_cb; struct pmcraid_instance* drv_inst; } ;
typedef int hrrq_size ;
typedef int hrrq_addr ;
typedef int __be64 ;
struct TYPE_2__ {struct pmcraid_ioarcb ioarcb; } ;


 int PMCRAID_IDENTIFY_HRRQ ;
 int PMCRAID_INTERNAL_TIMEOUT ;
 int PMCRAID_IOA_RES_HANDLE ;
 int PMCRAID_MAX_CMD ;
 int REQ_TYPE_IOACMD ;
 int cpu_to_be32 (int) ;
 int cpu_to_be64 (int ) ;
 int cpu_to_le32 (int ) ;
 int memcpy (int*,int *,int) ;
 void pmcraid_get_fwversion (struct pmcraid_cmd*) ;
 int pmcraid_info (char*,int ,int ,int) ;
 int pmcraid_reinit_cmdblk (struct pmcraid_cmd*) ;
 int pmcraid_send_cmd (struct pmcraid_cmd*,void (*) (struct pmcraid_cmd*),int ,int ) ;
 int pmcraid_timeout_handler ;

__attribute__((used)) static void pmcraid_identify_hrrq(struct pmcraid_cmd *cmd)
{
 struct pmcraid_instance *pinstance = cmd->drv_inst;
 struct pmcraid_ioarcb *ioarcb = &cmd->ioa_cb->ioarcb;
 int index = cmd->hrrq_index;
 __be64 hrrq_addr = cpu_to_be64(pinstance->hrrq_start_bus_addr[index]);
 u32 hrrq_size = cpu_to_be32(sizeof(u32) * PMCRAID_MAX_CMD);
 void (*done_function)(struct pmcraid_cmd *);

 pmcraid_reinit_cmdblk(cmd);
 cmd->hrrq_index = index + 1;

 if (cmd->hrrq_index < pinstance->num_hrrq) {
  done_function = pmcraid_identify_hrrq;
 } else {
  cmd->hrrq_index = 0;
  done_function = pmcraid_get_fwversion;
 }


 ioarcb->request_type = REQ_TYPE_IOACMD;
 ioarcb->resource_handle = cpu_to_le32(PMCRAID_IOA_RES_HANDLE);


 ioarcb->hrrq_id = index;
 ioarcb->cdb[0] = PMCRAID_IDENTIFY_HRRQ;
 ioarcb->cdb[1] = index;




 pmcraid_info("HRRQ_IDENTIFY with hrrq:ioarcb:index => %llx:%llx:%x\n",
       hrrq_addr, ioarcb->ioarcb_bus_addr, index);

 memcpy(&(ioarcb->cdb[2]), &hrrq_addr, sizeof(hrrq_addr));
 memcpy(&(ioarcb->cdb[10]), &hrrq_size, sizeof(hrrq_size));





 pmcraid_send_cmd(cmd, done_function,
    PMCRAID_INTERNAL_TIMEOUT,
    pmcraid_timeout_handler);
}
