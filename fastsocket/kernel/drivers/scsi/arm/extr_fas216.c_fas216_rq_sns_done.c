
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ Status; int Message; } ;
struct scsi_cmnd {int (* scsi_done ) (struct scsi_cmnd*) ;int sense_buffer; TYPE_2__ SCp; TYPE_1__* device; } ;
struct TYPE_8__ {int ses; } ;
struct TYPE_6__ {int id; } ;
typedef TYPE_3__ FAS216_Info ;


 unsigned int DID_OK ;
 scalar_t__ GOOD ;
 int LOG_CONNECT ;
 int fas216_log_target (TYPE_3__*,int ,int ,char*,unsigned int,int ,scalar_t__) ;
 int memset (int ,int ,int) ;
 int scsi_eh_restore_cmnd (struct scsi_cmnd*,int *) ;
 int stub1 (struct scsi_cmnd*) ;

__attribute__((used)) static void fas216_rq_sns_done(FAS216_Info *info, struct scsi_cmnd *SCpnt,
          unsigned int result)
{
 fas216_log_target(info, LOG_CONNECT, SCpnt->device->id,
     "request sense complete, result=0x%04x%02x%02x",
     result, SCpnt->SCp.Message, SCpnt->SCp.Status);

 if (result != DID_OK || SCpnt->SCp.Status != GOOD)





  memset(SCpnt->sense_buffer, 0, sizeof(SCpnt->sense_buffer));
 scsi_eh_restore_cmnd(SCpnt, &info->ses);
 SCpnt->scsi_done(SCpnt);
}
