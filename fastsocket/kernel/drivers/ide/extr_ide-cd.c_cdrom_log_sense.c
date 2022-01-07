
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct request_sense {int sense_key; int asc; } ;
struct request {int cmd_flags; int * cmd; } ;
struct TYPE_4__ {struct request_sense sense_data; } ;
typedef TYPE_1__ ide_drive_t ;


 int GPCMD_START_STOP_UNIT ;
 int IDE_DBG_SENSE ;




 int REQ_QUIET ;

 int cdrom_saw_media_change (TYPE_1__*) ;
 int ide_debug_log (int ,char*,int) ;

__attribute__((used)) static int cdrom_log_sense(ide_drive_t *drive, struct request *rq)
{
 struct request_sense *sense = &drive->sense_data;
 int log = 0;

 if (!sense || !rq || (rq->cmd_flags & REQ_QUIET))
  return 0;

 ide_debug_log(IDE_DBG_SENSE, "sense_key: 0x%x", sense->sense_key);

 switch (sense->sense_key) {
 case 130:
 case 129:
  break;
 case 131:




  if (sense->asc == 0x3a || sense->asc == 0x04)
   break;
  log = 1;
  break;
 case 132:




  if (rq->cmd[0] == GPCMD_START_STOP_UNIT && sense->asc == 0x24)
   break;
  log = 1;
  break;
 case 128:





  cdrom_saw_media_change(drive);
  break;
 default:
  log = 1;
  break;
 }
 return log;
}
