
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_cdc_ncm_nth16 {void* wNdpIndex; } ;
struct usb_cdc_ncm_ndp16 {scalar_t__ dwSignature; void* wLength; void* wNextNdpIndex; } ;
struct usb_cdc_ncm_dpe16 {int dummy; } ;
struct sk_buff {size_t len; scalar_t__ data; } ;
struct cdc_ncm_ctx {size_t tx_max; int tx_ndp_modulus; } ;
typedef scalar_t__ __le32 ;


 size_t CDC_NCM_NDP_SIZE ;
 int cdc_ncm_align_tail (struct sk_buff*,int ,int ,size_t) ;
 void* cpu_to_le16 (int) ;
 size_t le16_to_cpu (void*) ;
 scalar_t__ memset (int ,int ,size_t) ;
 int skb_put (struct sk_buff*,size_t) ;

__attribute__((used)) static struct usb_cdc_ncm_ndp16 *cdc_ncm_ndp(struct cdc_ncm_ctx *ctx, struct sk_buff *skb, __le32 sign, size_t reserve)
{
 struct usb_cdc_ncm_ndp16 *ndp16 = ((void*)0);
 struct usb_cdc_ncm_nth16 *nth16 = (void *)skb->data;
 size_t ndpoffset = le16_to_cpu(nth16->wNdpIndex);


 while (ndpoffset) {
  ndp16 = (struct usb_cdc_ncm_ndp16 *)(skb->data + ndpoffset);
  if (ndp16->dwSignature == sign)
   return ndp16;
  ndpoffset = le16_to_cpu(ndp16->wNextNdpIndex);
 }


 cdc_ncm_align_tail(skb, ctx->tx_ndp_modulus, 0, ctx->tx_max);


 if ((ctx->tx_max - skb->len - reserve) < CDC_NCM_NDP_SIZE)
  return ((void*)0);


 if (ndp16)
  ndp16->wNextNdpIndex = cpu_to_le16(skb->len);
 else
  nth16->wNdpIndex = cpu_to_le16(skb->len);


 ndp16 = (struct usb_cdc_ncm_ndp16 *)memset(skb_put(skb, CDC_NCM_NDP_SIZE), 0, CDC_NCM_NDP_SIZE);
 ndp16->dwSignature = sign;
 ndp16->wLength = cpu_to_le16(sizeof(struct usb_cdc_ncm_ndp16) + sizeof(struct usb_cdc_ncm_dpe16));
 return ndp16;
}
