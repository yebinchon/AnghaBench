
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_9__ ;
typedef struct TYPE_22__ TYPE_8__ ;
typedef struct TYPE_21__ TYPE_7__ ;
typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_20__ {int scsi_xferred; int this_residual; int ptr; } ;
struct TYPE_23__ {scalar_t__ tag; TYPE_6__ SCp; TYPE_1__* device; } ;
struct TYPE_18__ {scalar_t__ target; scalar_t__ lun; scalar_t__ tag; } ;
struct TYPE_21__ {TYPE_6__ SCp; TYPE_4__ reconnected; scalar_t__ disconnectable; } ;
struct TYPE_19__ {int transferred; } ;
struct TYPE_16__ {int disconnected; } ;
struct TYPE_22__ {TYPE_9__* SCpnt; TYPE_7__ scsi; TYPE_5__ dma; TYPE_3__* host; TYPE_2__ queues; } ;
struct TYPE_17__ {int host_no; } ;
struct TYPE_15__ {scalar_t__ id; scalar_t__ lun; } ;
typedef TYPE_8__ AS_Host ;


 int DBG (TYPE_9__*,int ) ;
 int acornscsi_abortcmd (TYPE_8__*,scalar_t__) ;
 int acornscsi_target (TYPE_8__*) ;
 int printk (char*,...) ;
 int queue_add_cmd_tail (int *,TYPE_9__*) ;
 TYPE_9__* queue_remove_tgtluntag (int *,scalar_t__,scalar_t__,scalar_t__) ;

__attribute__((used)) static
int acornscsi_reconnect_finish(AS_Host *host)
{
    if (host->scsi.disconnectable && host->SCpnt) {
 host->scsi.disconnectable = 0;
 if (host->SCpnt->device->id == host->scsi.reconnected.target &&
     host->SCpnt->device->lun == host->scsi.reconnected.lun &&
     host->SCpnt->tag == host->scsi.reconnected.tag) {




 } else {
     queue_add_cmd_tail(&host->queues.disconnected, host->SCpnt);





     host->SCpnt = ((void*)0);
 }
    }
    if (!host->SCpnt) {
 host->SCpnt = queue_remove_tgtluntag(&host->queues.disconnected,
    host->scsi.reconnected.target,
    host->scsi.reconnected.lun,
    host->scsi.reconnected.tag);




    }

    if (!host->SCpnt)
 acornscsi_abortcmd(host, host->scsi.reconnected.tag);
    else {



 host->scsi.SCp = host->SCpnt->SCp;




    }




    host->dma.transferred = host->scsi.SCp.scsi_xferred;

    return host->SCpnt != ((void*)0);
}
