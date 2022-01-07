
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u16 ;
struct usb_cdc_ncm_nth16 {void* wBlockLength; void* wSequence; void* wHeaderLength; int dwSignature; } ;
struct usb_cdc_ncm_ndp16 {void* wLength; TYPE_1__* dpe16; } ;
struct usb_cdc_ncm_dpe16 {int dummy; } ;
struct sk_buff {int len; scalar_t__ data; } ;
struct TYPE_12__ {int dwNtbOutMaxSize; } ;
struct cdc_ncm_ctx {int tx_max; scalar_t__ tx_curr_frame_num; scalar_t__ tx_max_datagrams; struct sk_buff* tx_curr_skb; TYPE_3__* netdev; TYPE_6__ ncm_parm; TYPE_5__* out_ep; int tx_timer_pending; struct sk_buff* tx_rem_sign; struct sk_buff* tx_rem_skb; scalar_t__ tx_remainder; scalar_t__ tx_modulus; int tx_seq; } ;
typedef struct sk_buff* __le32 ;
struct TYPE_10__ {void* wMaxPacketSize; } ;
struct TYPE_11__ {TYPE_4__ desc; } ;
struct TYPE_8__ {int tx_packets; int tx_dropped; } ;
struct TYPE_9__ {TYPE_2__ stats; } ;
struct TYPE_7__ {void* wDatagramIndex; void* wDatagramLength; } ;


 scalar_t__ CDC_NCM_DPT_DATAGRAMS_MAX ;
 int CDC_NCM_MIN_TX_PKT ;
 scalar_t__ CDC_NCM_RESTART_TIMER_DATAGRAM_CNT ;
 int CDC_NCM_TIMER_PENDING_CNT ;
 int GFP_ATOMIC ;
 int USB_CDC_NCM_NTH16_SIGN ;
 struct sk_buff* alloc_skb (int,int ) ;
 int cdc_ncm_align_tail (struct sk_buff*,scalar_t__,scalar_t__,int) ;
 struct usb_cdc_ncm_ndp16* cdc_ncm_ndp (struct cdc_ncm_ctx*,struct sk_buff*,struct sk_buff*,scalar_t__) ;
 int cdc_ncm_tx_timeout_start (struct cdc_ncm_ctx*) ;
 void* cpu_to_le16 (scalar_t__) ;
 int cpu_to_le32 (int ) ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 scalar_t__ le16_to_cpu (void*) ;
 scalar_t__ le32_to_cpu (int ) ;
 int memcpy (scalar_t__*,scalar_t__,int) ;
 scalar_t__ memset (scalar_t__*,int ,int) ;
 scalar_t__* skb_put (struct sk_buff*,int) ;
 scalar_t__ skb_tailroom (struct sk_buff*) ;
 int swap (struct sk_buff*,struct sk_buff*) ;

struct sk_buff *
cdc_ncm_fill_tx_frame(struct cdc_ncm_ctx *ctx, struct sk_buff *skb, __le32 sign)
{
 struct usb_cdc_ncm_nth16 *nth16;
 struct usb_cdc_ncm_ndp16 *ndp16;
 struct sk_buff *skb_out;
 u16 n = 0, index, ndplen;
 u8 ready2send = 0;


 if (skb != ((void*)0)) {
  swap(skb, ctx->tx_rem_skb);
  swap(sign, ctx->tx_rem_sign);
 } else {
  ready2send = 1;
 }


 skb_out = ctx->tx_curr_skb;


 if (!skb_out) {
  skb_out = alloc_skb((ctx->tx_max + 1), GFP_ATOMIC);
  if (skb_out == ((void*)0)) {
   if (skb != ((void*)0)) {
    dev_kfree_skb_any(skb);
    ctx->netdev->stats.tx_dropped++;
   }
   goto exit_no_skb;
  }

  nth16 = (struct usb_cdc_ncm_nth16 *)memset(skb_put(skb_out, sizeof(struct usb_cdc_ncm_nth16)), 0, sizeof(struct usb_cdc_ncm_nth16));
  nth16->dwSignature = cpu_to_le32(USB_CDC_NCM_NTH16_SIGN);
  nth16->wHeaderLength = cpu_to_le16(sizeof(struct usb_cdc_ncm_nth16));
  nth16->wSequence = cpu_to_le16(ctx->tx_seq++);


  ctx->tx_curr_frame_num = 0;
 }

 for (n = ctx->tx_curr_frame_num; n < ctx->tx_max_datagrams; n++) {

  if (skb == ((void*)0)) {
   skb = ctx->tx_rem_skb;
   sign = ctx->tx_rem_sign;
   ctx->tx_rem_skb = ((void*)0);


   if (skb == ((void*)0))
    break;
  }


  ndp16 = cdc_ncm_ndp(ctx, skb_out, sign, skb->len + ctx->tx_modulus + ctx->tx_remainder);


  cdc_ncm_align_tail(skb_out, ctx->tx_modulus, ctx->tx_remainder, ctx->tx_max);


  if (!ndp16 || skb_out->len + skb->len > ctx->tx_max) {
   if (n == 0) {

    dev_kfree_skb_any(skb);
    skb = ((void*)0);
    ctx->netdev->stats.tx_dropped++;
   } else {

    if (ctx->tx_rem_skb != ((void*)0)) {
     dev_kfree_skb_any(ctx->tx_rem_skb);
     ctx->netdev->stats.tx_dropped++;
    }
    ctx->tx_rem_skb = skb;
    ctx->tx_rem_sign = sign;
    skb = ((void*)0);
    ready2send = 1;
   }
   break;
  }


  ndplen = le16_to_cpu(ndp16->wLength);
  index = (ndplen - sizeof(struct usb_cdc_ncm_ndp16)) / sizeof(struct usb_cdc_ncm_dpe16) - 1;


  ndp16->dpe16[index].wDatagramLength = cpu_to_le16(skb->len);
  ndp16->dpe16[index].wDatagramIndex = cpu_to_le16(skb_out->len);
  ndp16->wLength = cpu_to_le16(ndplen + sizeof(struct usb_cdc_ncm_dpe16));
  memcpy(skb_put(skb_out, skb->len), skb->data, skb->len);
  dev_kfree_skb_any(skb);
  skb = ((void*)0);


  if (index >= CDC_NCM_DPT_DATAGRAMS_MAX) {
   ready2send = 1;
   break;
  }
 }


 if (skb != ((void*)0)) {
  dev_kfree_skb_any(skb);
  skb = ((void*)0);
  ctx->netdev->stats.tx_dropped++;
 }

 ctx->tx_curr_frame_num = n;

 if (n == 0) {


  ctx->tx_curr_skb = skb_out;
  goto exit_no_skb;

 } else if ((n < ctx->tx_max_datagrams) && (ready2send == 0)) {


  ctx->tx_curr_skb = skb_out;

  if (n < CDC_NCM_RESTART_TIMER_DATAGRAM_CNT)
   ctx->tx_timer_pending = CDC_NCM_TIMER_PENDING_CNT;
  goto exit_no_skb;

 } else {


 }







 if (skb_out->len > CDC_NCM_MIN_TX_PKT)

  memset(skb_put(skb_out, ctx->tx_max - skb_out->len), 0, ctx->tx_max - skb_out->len);


 if (((skb_out->len % le16_to_cpu(ctx->out_ep->desc.wMaxPacketSize)) == 0) &&
     (skb_out->len < le32_to_cpu(ctx->ncm_parm.dwNtbOutMaxSize)) && skb_tailroom(skb_out))
  *skb_put(skb_out, 1) = 0;


 nth16 = (struct usb_cdc_ncm_nth16 *)skb_out->data;
 nth16->wBlockLength = cpu_to_le16(skb_out->len);


 ctx->tx_curr_skb = ((void*)0);
 ctx->netdev->stats.tx_packets += ctx->tx_curr_frame_num;
 return skb_out;

exit_no_skb:

 if (ctx->tx_curr_skb != ((void*)0))
  cdc_ncm_tx_timeout_start(ctx);
 return ((void*)0);
}
