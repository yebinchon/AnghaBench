
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct sk_buff {int data; } ;
struct capi_ctr {scalar_t__ driverdata; } ;
struct TYPE_6__ {int ncci_head; TYPE_3__* card; } ;
typedef TYPE_2__ avmctrl_info ;
struct TYPE_7__ {int lock; TYPE_1__* dma; } ;
typedef TYPE_3__ avmcard ;
struct TYPE_5__ {int send_queue; } ;


 int CAPIMSG_APPID (int ) ;
 scalar_t__ CAPIMSG_CMD (int ) ;
 int CAPIMSG_MSGID (int ) ;
 int CAPIMSG_NCCI (int ) ;
 scalar_t__ CAPI_DATA_B3_REQ ;
 scalar_t__ CAPI_NOERROR ;
 int c4_dispatch_tx (TYPE_3__*) ;
 scalar_t__ capilib_data_b3_req (int *,int ,int ,int ) ;
 int skb_queue_tail (int *,struct sk_buff*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static u16 c4_send_message(struct capi_ctr *ctrl, struct sk_buff *skb)
{
 avmctrl_info *cinfo = (avmctrl_info *)(ctrl->driverdata);
 avmcard *card = cinfo->card;
 u16 retval = CAPI_NOERROR;
 unsigned long flags;

 spin_lock_irqsave(&card->lock, flags);
 if (CAPIMSG_CMD(skb->data) == CAPI_DATA_B3_REQ) {
  retval = capilib_data_b3_req(&cinfo->ncci_head,
          CAPIMSG_APPID(skb->data),
          CAPIMSG_NCCI(skb->data),
          CAPIMSG_MSGID(skb->data));
 }
 if (retval == CAPI_NOERROR) {
  skb_queue_tail(&card->dma->send_queue, skb);
  c4_dispatch_tx(card);
 }
 spin_unlock_irqrestore(&card->lock, flags);
 return retval;
}
