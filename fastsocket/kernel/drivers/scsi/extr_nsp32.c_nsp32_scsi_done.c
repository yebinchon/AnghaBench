
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct scsi_cmnd {int (* scsi_done ) (struct scsi_cmnd*) ;TYPE_3__* device; } ;
struct TYPE_8__ {int * CurrentSC; int * cur_target; TYPE_1__* cur_lunt; } ;
typedef TYPE_4__ nsp32_hw_data ;
struct TYPE_7__ {TYPE_2__* host; } ;
struct TYPE_6__ {unsigned int io_port; scalar_t__ hostdata; } ;
struct TYPE_5__ {int * SCpnt; } ;


 int BM_CNT ;
 int TRANSFER_CONTROL ;
 int nsp32_write2 (unsigned int,int ,int ) ;
 int nsp32_write4 (unsigned int,int ,int ) ;
 int scsi_dma_unmap (struct scsi_cmnd*) ;
 int stub1 (struct scsi_cmnd*) ;

__attribute__((used)) static void nsp32_scsi_done(struct scsi_cmnd *SCpnt)
{
 nsp32_hw_data *data = (nsp32_hw_data *)SCpnt->device->host->hostdata;
 unsigned int base = SCpnt->device->host->io_port;

 scsi_dma_unmap(SCpnt);




 nsp32_write2(base, TRANSFER_CONTROL, 0);
 nsp32_write4(base, BM_CNT, 0);




 (*SCpnt->scsi_done)(SCpnt);




 data->cur_lunt->SCpnt = ((void*)0);
 data->cur_lunt = ((void*)0);
 data->cur_target = ((void*)0);
 data->CurrentSC = ((void*)0);
}
