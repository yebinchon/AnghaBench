
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct idmac_channel {scalar_t__ status; int eof_irq; char* eof_name; int completed; } ;
struct idmac {int dummy; } ;
struct dma_chan {int client_count; int cookie; int chan_id; TYPE_1__* dev; int device; } ;
struct TYPE_2__ {int device; } ;


 int BUG_ON (int) ;
 int ENXIO ;
 scalar_t__ IDMAC_IC_7 ;
 scalar_t__ IPU_CHANNEL_FREE ;
 scalar_t__ IPU_CHANNEL_INITIALIZED ;
 int WARN_ON (int) ;
 int dev_dbg (int *,char*,scalar_t__,int) ;
 int ic_eof ;
 int ic_eof_irq ;
 int ic_sof ;
 int ic_sof_irq ;
 int idmac_interrupt ;
 int ipu_disable_channel (struct idmac*,struct idmac_channel*,int) ;
 int ipu_init_channel (struct idmac*,struct idmac_channel*) ;
 void* ipu_irq_map (int) ;
 int ipu_irq_unmap (scalar_t__) ;
 int ipu_uninit_channel (struct idmac*,struct idmac_channel*) ;
 int request_irq (int,int ,int ,char*,struct idmac_channel*) ;
 struct idmac* to_idmac (int ) ;
 struct idmac_channel* to_idmac_chan (struct dma_chan*) ;

__attribute__((used)) static int idmac_alloc_chan_resources(struct dma_chan *chan)
{
 struct idmac_channel *ichan = to_idmac_chan(chan);
 struct idmac *idmac = to_idmac(chan->device);
 int ret;


 BUG_ON(chan->client_count > 1);
 WARN_ON(ichan->status != IPU_CHANNEL_FREE);

 chan->cookie = 1;
 ichan->completed = -ENXIO;

 ret = ipu_irq_map(chan->chan_id);
 if (ret < 0)
  goto eimap;

 ichan->eof_irq = ret;





 ipu_disable_channel(idmac, ichan, 1);

 ret = ipu_init_channel(idmac, ichan);
 if (ret < 0)
  goto eichan;

 ret = request_irq(ichan->eof_irq, idmac_interrupt, 0,
     ichan->eof_name, ichan);
 if (ret < 0)
  goto erirq;
 ichan->status = IPU_CHANNEL_INITIALIZED;

 dev_dbg(&chan->dev->device, "Found channel 0x%x, irq %d\n",
  chan->chan_id, ichan->eof_irq);

 return ret;

erirq:
 ipu_uninit_channel(idmac, ichan);
eichan:
 ipu_irq_unmap(chan->chan_id);
eimap:
 return ret;
}
