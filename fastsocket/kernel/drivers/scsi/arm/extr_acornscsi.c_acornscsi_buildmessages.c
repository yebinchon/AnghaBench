
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {int msgs; } ;
struct TYPE_11__ {TYPE_4__ scsi; TYPE_3__* SCpnt; TYPE_1__* device; } ;
struct TYPE_9__ {scalar_t__* cmnd; TYPE_2__* device; scalar_t__ tag; } ;
struct TYPE_8__ {size_t id; int lun; } ;
struct TYPE_7__ {scalar_t__ sync_state; int disconnect_ok; } ;
typedef TYPE_5__ AS_Host ;


 int BUS_DEVICE_RESET ;
 int EXTENDED_MESSAGE ;
 int EXTENDED_SDTR ;
 unsigned int HEAD_OF_QUEUE_TAG ;
 int IDENTIFY (int ,int ) ;
 scalar_t__ INQUIRY ;
 scalar_t__ REQUEST_SENSE ;
 unsigned int SIMPLE_QUEUE_TAG ;
 scalar_t__ SYNC_NEGOCIATE ;
 scalar_t__ SYNC_SENT_REQUEST ;
 scalar_t__ TEST_UNIT_READY ;
 int acornscsi_abortcmd (scalar_t__) ;
 scalar_t__ cmd_aborted ;
 scalar_t__ cmd_reset ;
 int msgqueue_addmsg (int *,int,unsigned int,...) ;
 int sdtr_period ;
 int sdtr_size ;

__attribute__((used)) static
void acornscsi_buildmessages(AS_Host *host)
{
    msgqueue_addmsg(&host->scsi.msgs, 1,
       IDENTIFY(host->device[host->SCpnt->device->id].disconnect_ok,
        host->SCpnt->device->lun));
}
