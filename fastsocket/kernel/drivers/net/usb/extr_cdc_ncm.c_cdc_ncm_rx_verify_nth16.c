
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_cdc_ncm_nth16 {int wNdpIndex; int wSequence; int wBlockLength; int dwSignature; } ;
struct usb_cdc_ncm_ndp16 {int dummy; } ;
struct sk_buff {int len; scalar_t__ data; } ;
struct cdc_ncm_ctx {int rx_max; int rx_seq; } ;


 int EINVAL ;
 scalar_t__ USB_CDC_NCM_NTH16_SIGN ;
 int le16_to_cpu (int ) ;
 scalar_t__ le32_to_cpu (int ) ;
 int pr_debug (char*,...) ;

int cdc_ncm_rx_verify_nth16(struct cdc_ncm_ctx *ctx, struct sk_buff *skb_in)
{
 struct usb_cdc_ncm_nth16 *nth16;
 int len;
 int ret = -EINVAL;

 if (ctx == ((void*)0))
  goto error;

 if (skb_in->len < (sizeof(struct usb_cdc_ncm_nth16) +
     sizeof(struct usb_cdc_ncm_ndp16))) {
  pr_debug("frame too short\n");
  goto error;
 }

 nth16 = (struct usb_cdc_ncm_nth16 *)skb_in->data;

 if (le32_to_cpu(nth16->dwSignature) != USB_CDC_NCM_NTH16_SIGN) {
  pr_debug("invalid NTH16 signature <%u>\n",
     le32_to_cpu(nth16->dwSignature));
  goto error;
 }

 len = le16_to_cpu(nth16->wBlockLength);
 if (len > ctx->rx_max) {
  pr_debug("unsupported NTB block length %u/%u\n", len,
        ctx->rx_max);
  goto error;
 }

 if ((ctx->rx_seq + 1) != le16_to_cpu(nth16->wSequence) &&
  (ctx->rx_seq || le16_to_cpu(nth16->wSequence)) &&
  !((ctx->rx_seq == 0xffff) && !le16_to_cpu(nth16->wSequence))) {
  pr_debug("sequence number glitch prev=%d curr=%d\n",
    ctx->rx_seq, le16_to_cpu(nth16->wSequence));
 }
 ctx->rx_seq = le16_to_cpu(nth16->wSequence);

 ret = le16_to_cpu(nth16->wNdpIndex);
error:
 return ret;
}
