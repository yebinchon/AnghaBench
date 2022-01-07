
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct zfcp_unit {TYPE_2__* port; } ;
struct zfcp_adapter {int dummy; } ;
struct scsi_cmnd {TYPE_1__* device; } ;
struct TYPE_4__ {struct zfcp_adapter* adapter; } ;
struct TYPE_3__ {struct zfcp_unit* hostdata; } ;


 int SUCCESS ;
 int fc_block_scsi_eh (struct scsi_cmnd*) ;
 int zfcp_erp_adapter_reopen (struct zfcp_adapter*,int ,char*,struct scsi_cmnd*) ;
 int zfcp_erp_wait (struct zfcp_adapter*) ;

__attribute__((used)) static int zfcp_scsi_eh_host_reset_handler(struct scsi_cmnd *scpnt)
{
 struct zfcp_unit *unit = scpnt->device->hostdata;
 struct zfcp_adapter *adapter = unit->port->adapter;
 int ret;

 zfcp_erp_adapter_reopen(adapter, 0, "schrh_1", scpnt);
 zfcp_erp_wait(adapter);
 ret = fc_block_scsi_eh(scpnt);
 if (ret)
  return ret;

 return SUCCESS;
}
