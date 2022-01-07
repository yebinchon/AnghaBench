
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct nvme_iod {int start_time; scalar_t__ nents; int sg; struct bio* private; } ;
struct nvme_dev {TYPE_1__* pci_dev; } ;
struct nvme_completion {int status; } ;
struct bio {int dummy; } ;
struct TYPE_2__ {int dev; } ;


 int DMA_FROM_DEVICE ;
 int DMA_TO_DEVICE ;
 int EIO ;
 scalar_t__ bio_data_dir (struct bio*) ;
 int bio_endio (struct bio*,int ) ;
 int dma_unmap_sg (int *,int ,scalar_t__,int ) ;
 int le16_to_cpup (int *) ;
 int nvme_end_io_acct (struct bio*,int ) ;
 int nvme_free_iod (struct nvme_dev*,struct nvme_iod*) ;

__attribute__((used)) static void bio_completion(struct nvme_dev *dev, void *ctx,
      struct nvme_completion *cqe)
{
 struct nvme_iod *iod = ctx;
 struct bio *bio = iod->private;
 u16 status = le16_to_cpup(&cqe->status) >> 1;

 if (iod->nents) {
  dma_unmap_sg(&dev->pci_dev->dev, iod->sg, iod->nents,
   bio_data_dir(bio) ? DMA_TO_DEVICE : DMA_FROM_DEVICE);
  nvme_end_io_acct(bio, iod->start_time);
 }
 nvme_free_iod(dev, iod);
 if (status)
  bio_endio(bio, -EIO);
 else
  bio_endio(bio, 0);
}
