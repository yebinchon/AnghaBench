
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_trm_ctx {int lock; int pending_list; } ;
struct ti_ohci {scalar_t__ max_packet_size; struct dma_trm_ctx at_req_context; struct dma_trm_ctx at_resp_context; } ;
struct hpsb_packet {scalar_t__ data_size; scalar_t__ type; int tcode; int driver_list; } ;
struct hpsb_host {struct ti_ohci* hostdata; } ;


 int EOVERFLOW ;
 int KERN_ERR ;
 int PRINT (int ,char*,scalar_t__) ;
 int TCODE_ISO_DATA ;
 int dma_trm_flush (struct ti_ohci*,struct dma_trm_ctx*) ;
 scalar_t__ hpsb_raw ;
 int list_add_tail (int *,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int ohci_transmit(struct hpsb_host *host, struct hpsb_packet *packet)
{
 struct ti_ohci *ohci = host->hostdata;
 struct dma_trm_ctx *d;
 unsigned long flags;

 if (packet->data_size > ohci->max_packet_size) {
  PRINT(KERN_ERR,
        "Transmit packet size %Zd is too big",
        packet->data_size);
  return -EOVERFLOW;
 }

 if (packet->type == hpsb_raw)
  d = &ohci->at_req_context;
 else if ((packet->tcode & 0x02) && (packet->tcode != TCODE_ISO_DATA))
  d = &ohci->at_resp_context;
 else
  d = &ohci->at_req_context;

 spin_lock_irqsave(&d->lock,flags);

 list_add_tail(&packet->driver_list, &d->pending_list);

 dma_trm_flush(ohci, d);

 spin_unlock_irqrestore(&d->lock,flags);

 return 0;
}
