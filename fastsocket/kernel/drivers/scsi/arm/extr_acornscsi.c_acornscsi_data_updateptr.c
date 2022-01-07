
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct scsi_pointer {unsigned int ptr; scalar_t__ this_residual; } ;
struct TYPE_4__ {int xfer_done; } ;
struct TYPE_5__ {TYPE_1__ dma; } ;
typedef TYPE_2__ AS_Host ;


 scalar_t__ next_SCp (struct scsi_pointer*) ;

__attribute__((used)) static
void acornscsi_data_updateptr(AS_Host *host, struct scsi_pointer *SCp, unsigned int length)
{
    SCp->ptr += length;
    SCp->this_residual -= length;

    if (SCp->this_residual == 0 && next_SCp(SCp) == 0)
 host->dma.xfer_done = 1;
}
