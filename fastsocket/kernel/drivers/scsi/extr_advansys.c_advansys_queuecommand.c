
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_cmnd {void (* scsi_done ) (struct scsi_cmnd*) ;TYPE_1__* device; } ;
struct Scsi_Host {int dummy; } ;
struct TYPE_2__ {struct Scsi_Host* host; } ;





 int ASC_STATS (struct Scsi_Host*,int ) ;
 int SCSI_MLQUEUE_HOST_BUSY ;
 int asc_execute_scsi_cmnd (struct scsi_cmnd*) ;
 int asc_scsi_done (struct scsi_cmnd*) ;
 int queuecommand ;

__attribute__((used)) static int
advansys_queuecommand(struct scsi_cmnd *scp, void (*done)(struct scsi_cmnd *))
{
 struct Scsi_Host *shost = scp->device->host;
 int asc_res, result = 0;

 ASC_STATS(shost, queuecommand);
 scp->scsi_done = done;

 asc_res = asc_execute_scsi_cmnd(scp);

 switch (asc_res) {
 case 128:
  break;
 case 130:
  result = SCSI_MLQUEUE_HOST_BUSY;
  break;
 case 129:
 default:
  asc_scsi_done(scp);
  break;
 }

 return result;
}
