
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int postponed_rq; int dsc_poll_freq; } ;
typedef TYPE_3__ idetape_tape_t ;
struct TYPE_10__ {TYPE_2__* hwif; TYPE_3__* driver_data; } ;
typedef TYPE_4__ ide_drive_t ;
struct TYPE_8__ {TYPE_1__* rq; } ;
struct TYPE_7__ {int * cmd; } ;


 int IDE_DBG_FUNC ;
 int ide_debug_log (int ,char*,int ,int ) ;
 int ide_stall_queue (TYPE_4__*,int ) ;

__attribute__((used)) static void ide_tape_stall_queue(ide_drive_t *drive)
{
 idetape_tape_t *tape = drive->driver_data;

 ide_debug_log(IDE_DBG_FUNC, "cmd: 0x%x, dsc_poll_freq: %lu",
        drive->hwif->rq->cmd[0], tape->dsc_poll_freq);

 tape->postponed_rq = 1;

 ide_stall_queue(drive, tape->dsc_poll_freq);
}
