
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct scsi_cmnd {TYPE_2__* device; } ;
struct orc_host {int dummy; } ;
struct TYPE_4__ {TYPE_1__* host; } ;
struct TYPE_3__ {scalar_t__ hostdata; } ;


 int inia100_abort_cmd (struct orc_host*,struct scsi_cmnd*) ;

__attribute__((used)) static int inia100_abort(struct scsi_cmnd * cmd)
{
 struct orc_host *host;

 host = (struct orc_host *) cmd->device->host->hostdata;
 return inia100_abort_cmd(host, cmd);
}
