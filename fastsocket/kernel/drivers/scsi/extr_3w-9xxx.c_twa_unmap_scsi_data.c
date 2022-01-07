
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ phase; } ;
struct scsi_cmnd {TYPE_1__ SCp; } ;
struct TYPE_5__ {struct scsi_cmnd** srb; } ;
typedef TYPE_2__ TW_Device_Extension ;


 scalar_t__ TW_PHASE_SGLIST ;
 int scsi_dma_unmap (struct scsi_cmnd*) ;

__attribute__((used)) static void twa_unmap_scsi_data(TW_Device_Extension *tw_dev, int request_id)
{
 struct scsi_cmnd *cmd = tw_dev->srb[request_id];

 if (cmd->SCp.phase == TW_PHASE_SGLIST)
  scsi_dma_unmap(cmd);
}
