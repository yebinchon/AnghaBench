
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_cmnd {void (* scsi_done ) (struct scsi_cmnd*) ;TYPE_1__* device; } ;
struct TYPE_2__ {int host; } ;


 int virtscsi_queuecommand (int ,struct scsi_cmnd*) ;

__attribute__((used)) static int virtscsi_queue(struct scsi_cmnd *sc, void (*done)(struct scsi_cmnd *))
{
 sc->scsi_done = done;
 return virtscsi_queuecommand(sc->device->host, sc);
}
