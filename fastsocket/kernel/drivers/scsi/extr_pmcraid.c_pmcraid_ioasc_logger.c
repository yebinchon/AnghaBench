
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct pmcraid_ioasc_error {scalar_t__ log_level; int error_string; } ;
struct pmcraid_cmd {TYPE_2__* ioa_cb; TYPE_1__* drv_inst; } ;
struct TYPE_6__ {int resource_handle; int * cdb; } ;
struct TYPE_5__ {TYPE_3__ ioarcb; } ;
struct TYPE_4__ {scalar_t__ current_log_level; } ;


 int le32_to_cpu (int ) ;
 int pmcraid_err (char*,int ,int ,int ,int ) ;
 struct pmcraid_ioasc_error* pmcraid_get_error_info (int ) ;

void pmcraid_ioasc_logger(u32 ioasc, struct pmcraid_cmd *cmd)
{
 struct pmcraid_ioasc_error *error_info = pmcraid_get_error_info(ioasc);

 if (error_info == ((void*)0) ||
  cmd->drv_inst->current_log_level < error_info->log_level)
  return;


 pmcraid_err("cmd [%x] for resource %x failed with %x(%s)\n",
  cmd->ioa_cb->ioarcb.cdb[0],
  cmd->ioa_cb->ioarcb.resource_handle,
  le32_to_cpu(ioasc), error_info->error_string);
}
