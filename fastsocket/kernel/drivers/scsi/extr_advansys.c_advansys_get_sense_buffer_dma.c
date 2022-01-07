
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int dma_handle; } ;
struct scsi_cmnd {TYPE_2__ SCp; int sense_buffer; TYPE_1__* device; } ;
struct asc_board {int dev; } ;
typedef int __le32 ;
struct TYPE_3__ {int host; } ;


 int DMA_FROM_DEVICE ;
 int SCSI_SENSE_BUFFERSIZE ;
 int cpu_to_le32 (int ) ;
 int dma_cache_sync (int ,int ,int ,int ) ;
 int dma_map_single (int ,int ,int ,int ) ;
 struct asc_board* shost_priv (int ) ;

__attribute__((used)) static __le32 advansys_get_sense_buffer_dma(struct scsi_cmnd *scp)
{
 struct asc_board *board = shost_priv(scp->device->host);
 scp->SCp.dma_handle = dma_map_single(board->dev, scp->sense_buffer,
          SCSI_SENSE_BUFFERSIZE, DMA_FROM_DEVICE);
 dma_cache_sync(board->dev, scp->sense_buffer,
         SCSI_SENSE_BUFFERSIZE, DMA_FROM_DEVICE);
 return cpu_to_le32(scp->SCp.dma_handle);
}
