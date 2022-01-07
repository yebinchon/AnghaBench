
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct r592_device {int dma_error; TYPE_2__* req; TYPE_1__* pci_dev; int dma_done; int dma_capable; } ;
struct TYPE_8__ {int length; } ;
struct TYPE_7__ {scalar_t__ data_dir; TYPE_3__ sg; int long_data; } ;
struct TYPE_6__ {int dev; } ;


 int EINVAL ;
 int EIO ;
 int ETIMEDOUT ;
 int INIT_COMPLETION (int ) ;
 int PCI_DMA_FROMDEVICE ;
 int PCI_DMA_TODEVICE ;
 int R592_LFIFO_SIZE ;
 scalar_t__ WRITE ;
 int dbg_verbose (char*) ;
 int dma_map_sg (int *,TYPE_3__*,int,int ) ;
 int dma_unmap_sg (int *,TYPE_3__*,int,int ) ;
 int message (char*) ;
 int msecs_to_jiffies (int) ;
 int r592_start_dma (struct r592_device*,int) ;
 int r592_stop_dma (struct r592_device*,int ) ;
 int sg_dma_len (TYPE_3__*) ;
 int wait_for_completion_timeout (int *,int ) ;

__attribute__((used)) static int r592_transfer_fifo_dma(struct r592_device *dev)
{
 int len, sg_count;
 bool is_write;

 if (!dev->dma_capable || !dev->req->long_data)
  return -EINVAL;

 len = dev->req->sg.length;
 is_write = dev->req->data_dir == WRITE;

 if (len != R592_LFIFO_SIZE)
  return -EINVAL;

 dbg_verbose("doing dma transfer");

 dev->dma_error = 0;
 INIT_COMPLETION(dev->dma_done);


 sg_count = dma_map_sg(&dev->pci_dev->dev, &dev->req->sg, 1, is_write ?
  PCI_DMA_TODEVICE : PCI_DMA_FROMDEVICE);

 if (sg_count != 1 ||
   (sg_dma_len(&dev->req->sg) < dev->req->sg.length)) {
  message("problem in dma_map_sg");
  return -EIO;
 }

 r592_start_dma(dev, is_write);


 if (!wait_for_completion_timeout(
   &dev->dma_done, msecs_to_jiffies(1000))) {
  message("DMA timeout");
  r592_stop_dma(dev, -ETIMEDOUT);
 }

 dma_unmap_sg(&dev->pci_dev->dev, &dev->req->sg, 1, is_write ?
  PCI_DMA_TODEVICE : PCI_DMA_FROMDEVICE);


 return dev->dma_error;
}
