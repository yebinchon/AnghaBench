
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct request_sense {int dummy; } ;
struct request {int cmd_flags; int cmd_type; } ;
struct cdrom_info {int disk; } ;
struct cdrom_device_info {TYPE_1__* handle; } ;
struct TYPE_3__ {int atapi_flags; int queue; struct cdrom_info* driver_data; } ;
typedef TYPE_1__ ide_drive_t ;


 int IDE_AFLAG_DOOR_LOCKED ;
 int READ ;
 int REQ_QUIET ;
 int REQ_TYPE_SPECIAL ;
 int __GFP_WAIT ;
 int blk_execute_rq (int ,int ,struct request*,int ) ;
 struct request* blk_get_request (int ,int ,int ) ;
 int blk_put_request (struct request*) ;
 int ide_cd_lockdoor (TYPE_1__*,int,struct request_sense*) ;

int ide_cdrom_reset(struct cdrom_device_info *cdi)
{
 ide_drive_t *drive = cdi->handle;
 struct cdrom_info *cd = drive->driver_data;
 struct request_sense sense;
 struct request *rq;
 int ret;

 rq = blk_get_request(drive->queue, READ, __GFP_WAIT);
 rq->cmd_type = REQ_TYPE_SPECIAL;
 rq->cmd_flags = REQ_QUIET;
 ret = blk_execute_rq(drive->queue, cd->disk, rq, 0);
 blk_put_request(rq);




 if (drive->atapi_flags & IDE_AFLAG_DOOR_LOCKED)
  (void)ide_cd_lockdoor(drive, 1, &sense);

 return ret;
}
