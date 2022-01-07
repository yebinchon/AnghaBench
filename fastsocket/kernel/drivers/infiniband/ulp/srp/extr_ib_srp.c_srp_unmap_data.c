
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct srp_target_port {TYPE_2__* srp_host; } ;
struct srp_request {int nfmr; struct ib_pool_fmr** fmr_list; } ;
struct scsi_cmnd {scalar_t__ sc_data_direction; } ;
struct ib_pool_fmr {int dummy; } ;
struct ib_device {int dummy; } ;
struct TYPE_4__ {TYPE_1__* srp_dev; } ;
struct TYPE_3__ {struct ib_device* dev; } ;


 scalar_t__ DMA_FROM_DEVICE ;
 scalar_t__ DMA_TO_DEVICE ;
 int ib_dma_unmap_sg (struct ib_device*,int ,int ,scalar_t__) ;
 int ib_fmr_pool_unmap (int ) ;
 int scsi_sg_count (struct scsi_cmnd*) ;
 int scsi_sglist (struct scsi_cmnd*) ;

__attribute__((used)) static void srp_unmap_data(struct scsi_cmnd *scmnd,
      struct srp_target_port *target,
      struct srp_request *req)
{
 struct ib_device *ibdev = target->srp_host->srp_dev->dev;
 struct ib_pool_fmr **pfmr;

 if (!scsi_sglist(scmnd) ||
     (scmnd->sc_data_direction != DMA_TO_DEVICE &&
      scmnd->sc_data_direction != DMA_FROM_DEVICE))
  return;

 pfmr = req->fmr_list;
 while (req->nfmr--)
  ib_fmr_pool_unmap(*pfmr++);

 ib_dma_unmap_sg(ibdev, scsi_sglist(scmnd), scsi_sg_count(scmnd),
   scmnd->sc_data_direction);
}
