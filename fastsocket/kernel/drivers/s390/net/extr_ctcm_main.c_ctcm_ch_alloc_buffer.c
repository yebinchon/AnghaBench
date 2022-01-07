
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct channel {int flags; TYPE_2__* trans_skb; int trans_skb_data; TYPE_1__* ccw; int id; scalar_t__ max_bufsize; } ;
struct TYPE_6__ {int data; } ;
struct TYPE_5__ {scalar_t__ count; } ;


 scalar_t__ CHANNEL_DIRECTION (int ) ;
 int CHANNEL_FLAGS_BUFSIZE_CHANGED ;
 int CTCM_DBF_TEXT_ (int ,int ,char*,int ,int ,char*) ;
 int CTCM_FUNTAIL ;
 int CTC_DBF_ERROR ;
 int ENOMEM ;
 int ERROR ;
 int GFP_ATOMIC ;
 int GFP_DMA ;
 scalar_t__ READ ;
 TYPE_2__* __dev_alloc_skb (scalar_t__,int) ;
 int clear_normalized_cda (TYPE_1__*) ;
 int dev_kfree_skb (TYPE_2__*) ;
 scalar_t__ set_normalized_cda (TYPE_1__*,int ) ;

int ctcm_ch_alloc_buffer(struct channel *ch)
{
 clear_normalized_cda(&ch->ccw[1]);
 ch->trans_skb = __dev_alloc_skb(ch->max_bufsize, GFP_ATOMIC | GFP_DMA);
 if (ch->trans_skb == ((void*)0)) {
  CTCM_DBF_TEXT_(ERROR, CTC_DBF_ERROR,
   "%s(%s): %s trans_skb allocation error",
   CTCM_FUNTAIL, ch->id,
   (CHANNEL_DIRECTION(ch->flags) == READ) ? "RX" : "TX");
  return -ENOMEM;
 }

 ch->ccw[1].count = ch->max_bufsize;
 if (set_normalized_cda(&ch->ccw[1], ch->trans_skb->data)) {
  dev_kfree_skb(ch->trans_skb);
  ch->trans_skb = ((void*)0);
  CTCM_DBF_TEXT_(ERROR, CTC_DBF_ERROR,
   "%s(%s): %s set norm_cda failed",
   CTCM_FUNTAIL, ch->id,
   (CHANNEL_DIRECTION(ch->flags) == READ) ? "RX" : "TX");
  return -ENOMEM;
 }

 ch->ccw[1].count = 0;
 ch->trans_skb_data = ch->trans_skb->data;
 ch->flags &= ~CHANNEL_FLAGS_BUFSIZE_CHANGED;
 return 0;
}
