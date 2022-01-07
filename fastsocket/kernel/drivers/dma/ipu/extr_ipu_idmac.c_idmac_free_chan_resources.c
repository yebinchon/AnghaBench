
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct idmac_channel {scalar_t__ status; int chan_mutex; int eof_irq; } ;
struct idmac {int dummy; } ;
struct dma_chan {int chan_id; int device; } ;
struct TYPE_2__ {int tasklet; } ;


 int EINVAL ;
 int IDMAC_IC_7 ;
 scalar_t__ IPU_CHANNEL_FREE ;
 int __idmac_terminate_all (struct dma_chan*) ;
 int free_irq (int ,struct idmac_channel*) ;
 int ic_eof ;
 int ic_sof ;
 int ipu_irq_unmap (int) ;
 int ipu_uninit_channel (struct idmac*,struct idmac_channel*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int tasklet_schedule (int *) ;
 struct idmac* to_idmac (int ) ;
 struct idmac_channel* to_idmac_chan (struct dma_chan*) ;
 TYPE_1__* to_ipu (struct idmac*) ;

__attribute__((used)) static void idmac_free_chan_resources(struct dma_chan *chan)
{
 struct idmac_channel *ichan = to_idmac_chan(chan);
 struct idmac *idmac = to_idmac(chan->device);

 mutex_lock(&ichan->chan_mutex);

 __idmac_terminate_all(chan);

 if (ichan->status > IPU_CHANNEL_FREE) {
  free_irq(ichan->eof_irq, ichan);
  ipu_irq_unmap(chan->chan_id);
 }

 ichan->status = IPU_CHANNEL_FREE;

 ipu_uninit_channel(idmac, ichan);

 mutex_unlock(&ichan->chan_mutex);

 tasklet_schedule(&to_ipu(idmac)->tasklet);
}
