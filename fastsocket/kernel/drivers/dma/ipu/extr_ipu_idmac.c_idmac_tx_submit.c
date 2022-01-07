
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct ipu {int dummy; } ;
struct idmac_video_param {int out_stride; int out_height; int out_width; int out_pixel_fmt; } ;
struct idmac_tx_desc {int list; int * sg; } ;
struct TYPE_7__ {scalar_t__ cookie; TYPE_1__* dev; } ;
struct TYPE_6__ {struct idmac_video_param video; } ;
struct idmac_channel {scalar_t__ status; int chan_mutex; TYPE_3__ dma_chan; int lock; int queue; scalar_t__* sg; TYPE_2__ params; } ;
struct idmac {int dummy; } ;
struct dma_async_tx_descriptor {scalar_t__ cookie; TYPE_4__* chan; } ;
struct device {int dummy; } ;
typedef scalar_t__ dma_cookie_t ;
typedef int dma_addr_t ;
struct TYPE_8__ {int device; } ;
struct TYPE_5__ {struct device device; } ;


 scalar_t__ EBUSY ;
 scalar_t__ IPU_CHANNEL_ENABLED ;
 scalar_t__ IPU_CHANNEL_READY ;
 int IPU_ROTATE_NONE ;
 int WARN_ON (int) ;
 int async_tx_clear_ack (struct dma_async_tx_descriptor*) ;
 int dev_dbg (struct device*,char*,int *) ;
 int dev_err (struct device*,char*,struct dma_async_tx_descriptor*) ;
 int dump_idmac_reg (struct ipu*) ;
 int ipu_enable_channel (struct idmac*,struct idmac_channel*) ;
 scalar_t__ ipu_init_channel_buffer (struct idmac_channel*,int ,int ,int ,int ,int ,int ,int ) ;
 int ipu_submit_channel_buffers (struct idmac_channel*,struct idmac_tx_desc*) ;
 int list_add_tail (int *,int *) ;
 int list_del_init (int *) ;
 int list_empty (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sg_dma_address (int *) ;
 scalar_t__ sg_is_last (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct idmac* to_idmac (int ) ;
 struct idmac_channel* to_idmac_chan (TYPE_4__*) ;
 struct ipu* to_ipu (struct idmac*) ;
 struct idmac_tx_desc* to_tx_desc (struct dma_async_tx_descriptor*) ;

__attribute__((used)) static dma_cookie_t idmac_tx_submit(struct dma_async_tx_descriptor *tx)
{
 struct idmac_tx_desc *desc = to_tx_desc(tx);
 struct idmac_channel *ichan = to_idmac_chan(tx->chan);
 struct idmac *idmac = to_idmac(tx->chan->device);
 struct ipu *ipu = to_ipu(idmac);
 struct device *dev = &ichan->dma_chan.dev->device;
 dma_cookie_t cookie;
 unsigned long flags;
 int ret;


 if (!list_empty(&desc->list)) {

  dev_err(dev, "Descriptor %p not prepared!\n", tx);
  return -EBUSY;
 }

 mutex_lock(&ichan->chan_mutex);

 async_tx_clear_ack(tx);

 if (ichan->status < IPU_CHANNEL_READY) {
  struct idmac_video_param *video = &ichan->params.video;




  dma_addr_t dma_1 = sg_is_last(desc->sg) ? 0 :
   sg_dma_address(&desc->sg[1]);

  WARN_ON(ichan->sg[0] || ichan->sg[1]);

  cookie = ipu_init_channel_buffer(ichan,
       video->out_pixel_fmt,
       video->out_width,
       video->out_height,
       video->out_stride,
       IPU_ROTATE_NONE,
       sg_dma_address(&desc->sg[0]),
       dma_1);
  if (cookie < 0)
   goto out;
 }

 dev_dbg(dev, "Submitting sg %p\n", &desc->sg[0]);

 cookie = ichan->dma_chan.cookie;

 if (++cookie < 0)
  cookie = 1;


 ichan->dma_chan.cookie = cookie;
 tx->cookie = cookie;


 spin_lock_irqsave(&ichan->lock, flags);

 list_add_tail(&desc->list, &ichan->queue);

 ret = ipu_submit_channel_buffers(ichan, desc);

 spin_unlock_irqrestore(&ichan->lock, flags);

 if (ret < 0) {
  cookie = ret;
  goto dequeue;
 }

 if (ichan->status < IPU_CHANNEL_ENABLED) {
  ret = ipu_enable_channel(idmac, ichan);
  if (ret < 0) {
   cookie = ret;
   goto dequeue;
  }
 }

 dump_idmac_reg(ipu);

dequeue:
 if (cookie < 0) {
  spin_lock_irqsave(&ichan->lock, flags);
  list_del_init(&desc->list);
  spin_unlock_irqrestore(&ichan->lock, flags);
  tx->cookie = cookie;
  ichan->dma_chan.cookie = cookie;
 }

out:
 mutex_unlock(&ichan->chan_mutex);

 return cookie;
}
