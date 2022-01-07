
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int msgs; int phase; } ;
struct TYPE_6__ {TYPE_1__ scsi; } ;
typedef TYPE_2__ AS_Host ;


 int ABORT ;
 int ABORT_TAG ;
 int CMND_ASSERTATN ;
 int PHASE_ABORTED ;
 int SBIC_CMND ;
 int msgqueue_addmsg (int *,int,int ,...) ;
 int msgqueue_flush (int *) ;
 int sbic_arm_write (TYPE_2__*,int ,int ) ;

__attribute__((used)) static
void acornscsi_abortcmd(AS_Host *host, unsigned char tag)
{
    host->scsi.phase = PHASE_ABORTED;
    sbic_arm_write(host, SBIC_CMND, CMND_ASSERTATN);

    msgqueue_flush(&host->scsi.msgs);





 msgqueue_addmsg(&host->scsi.msgs, 1, ABORT);
}
