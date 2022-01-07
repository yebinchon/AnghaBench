
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct scsi_pointer {int this_residual; } ;
struct TYPE_3__ {int dma; } ;
struct TYPE_4__ {TYPE_1__ scsi; } ;
struct eesoxscsi_info {int * sg; TYPE_2__ info; } ;
struct device {int dummy; } ;
struct Scsi_Host {scalar_t__ hostdata; } ;
typedef scalar_t__ fasdmatype_t ;
typedef scalar_t__ fasdmadir_t ;


 int DMA_FROM_DEVICE ;
 int DMA_MODE_READ ;
 int DMA_MODE_WRITE ;
 scalar_t__ DMA_OUT ;
 int DMA_TO_DEVICE ;
 int NO_DMA ;
 int NR_SG ;
 int copy_SCp_to_sg (int *,struct scsi_pointer*,int ) ;
 int disable_dma (int) ;
 int dma_map_sg (struct device*,int *,int,int) ;
 int enable_dma (int) ;
 scalar_t__ fasdma_pseudo ;
 scalar_t__ fasdma_real_all ;
 struct device* scsi_get_device (struct Scsi_Host*) ;
 int set_dma_mode (int,int) ;
 int set_dma_sg (int,int *,int) ;

__attribute__((used)) static fasdmatype_t
eesoxscsi_dma_setup(struct Scsi_Host *host, struct scsi_pointer *SCp,
         fasdmadir_t direction, fasdmatype_t min_type)
{
 struct eesoxscsi_info *info = (struct eesoxscsi_info *)host->hostdata;
 struct device *dev = scsi_get_device(host);
 int dmach = info->info.scsi.dma;

 if (dmach != NO_DMA &&
     (min_type == fasdma_real_all || SCp->this_residual >= 512)) {
  int bufs, map_dir, dma_dir;

  bufs = copy_SCp_to_sg(&info->sg[0], SCp, NR_SG);

  if (direction == DMA_OUT)
   map_dir = DMA_TO_DEVICE,
   dma_dir = DMA_MODE_WRITE;
  else
   map_dir = DMA_FROM_DEVICE,
   dma_dir = DMA_MODE_READ;

  dma_map_sg(dev, info->sg, bufs, map_dir);

  disable_dma(dmach);
  set_dma_sg(dmach, info->sg, bufs);
  set_dma_mode(dmach, dma_dir);
  enable_dma(dmach);
  return fasdma_real_all;
 }





 return fasdma_pseudo;
}
