
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct zfcp_adapter {int dbf; } ;
struct scsi_cmnd {int (* scsi_done ) (struct scsi_cmnd*) ;TYPE_2__* device; } ;
struct TYPE_4__ {TYPE_1__* host; } ;
struct TYPE_3__ {scalar_t__* hostdata; } ;


 int set_host_byte (struct scsi_cmnd*,int) ;
 int stub1 (struct scsi_cmnd*) ;
 int zfcp_dbf_scsi_result (char*,int,int ,struct scsi_cmnd*,int *) ;

__attribute__((used)) static void zfcp_scsi_command_fail(struct scsi_cmnd *scpnt, int result)
{
 struct zfcp_adapter *adapter =
  (struct zfcp_adapter *) scpnt->device->host->hostdata[0];
 set_host_byte(scpnt, result);
 if ((scpnt->device != ((void*)0)) && (scpnt->device->host != ((void*)0)))
  zfcp_dbf_scsi_result("fail", 4, adapter->dbf, scpnt, ((void*)0));

 scpnt->scsi_done(scpnt);
}
