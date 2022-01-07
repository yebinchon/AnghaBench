
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct scatterlist {int dummy; } ;
struct idmac_tx_desc {int txd; } ;
struct TYPE_4__ {unsigned int chan_id; TYPE_1__* dev; } ;
struct idmac_channel {TYPE_2__ dma_chan; } ;
struct device {int dummy; } ;
struct TYPE_3__ {struct device device; } ;


 int EINTR ;
 scalar_t__ async_tx_test_ack (int *) ;
 int dev_dbg (struct device*,char*,struct scatterlist*,unsigned int,int) ;
 int dev_err (struct device*,char*,struct scatterlist*,unsigned int,int) ;
 int ipu_select_buffer (unsigned int,int) ;
 int ipu_update_channel_buffer (struct idmac_channel*,int,int ) ;
 int sg_dma_address (struct scatterlist*) ;

__attribute__((used)) static int ipu_submit_buffer(struct idmac_channel *ichan,
 struct idmac_tx_desc *desc, struct scatterlist *sg, int buf_idx)
{
 unsigned int chan_id = ichan->dma_chan.chan_id;
 struct device *dev = &ichan->dma_chan.dev->device;
 int ret;

 if (async_tx_test_ack(&desc->txd))
  return -EINTR;







 ret = ipu_update_channel_buffer(ichan, buf_idx,
     sg_dma_address(sg));

 if (ret < 0) {
  dev_err(dev, "Updating sg %p on channel 0x%x buffer %d failed!\n",
   sg, chan_id, buf_idx);
  return ret;
 }

 ipu_select_buffer(chan_id, buf_idx);
 dev_dbg(dev, "Updated sg %p on channel 0x%x buffer %d\n",
  sg, chan_id, buf_idx);

 return 0;
}
