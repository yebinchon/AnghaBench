
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct scsi_cmnd {void (* scsi_done ) (struct scsi_cmnd*) ;TYPE_2__* device; } ;
struct orc_scb {int dummy; } ;
struct orc_host {int dummy; } ;
struct TYPE_4__ {TYPE_1__* host; } ;
struct TYPE_3__ {scalar_t__ hostdata; } ;


 int SCSI_MLQUEUE_HOST_BUSY ;
 scalar_t__ inia100_build_scb (struct orc_host*,struct orc_scb*,struct scsi_cmnd*) ;
 struct orc_scb* orc_alloc_scb (struct orc_host*) ;
 int orc_exec_scb (struct orc_host*,struct orc_scb*) ;
 int orc_release_scb (struct orc_host*,struct orc_scb*) ;

__attribute__((used)) static int inia100_queue(struct scsi_cmnd * cmd, void (*done) (struct scsi_cmnd *))
{
 struct orc_scb *scb;
 struct orc_host *host;

 host = (struct orc_host *) cmd->device->host->hostdata;
 cmd->scsi_done = done;

 if ((scb = orc_alloc_scb(host)) == ((void*)0))
  return SCSI_MLQUEUE_HOST_BUSY;

 if (inia100_build_scb(host, scb, cmd)) {
  orc_release_scb(host, scb);
  return SCSI_MLQUEUE_HOST_BUSY;
 }
 orc_exec_scb(host, scb);
 return 0;
}
