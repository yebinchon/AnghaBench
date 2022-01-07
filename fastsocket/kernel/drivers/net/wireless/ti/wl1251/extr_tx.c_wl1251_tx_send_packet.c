
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef unsigned char u8 ;
typedef scalar_t__ u32 ;
typedef int u16 ;
struct wl1251 {int data_in_count; TYPE_3__* data_path; struct sk_buff** tx_frames; } ;
struct tx_double_buffer_desc {size_t id; int xmit_queue; int rate; int length; } ;
struct sk_buff {unsigned char* data; int len; } ;
struct TYPE_5__ {TYPE_1__* hw_key; } ;
struct ieee80211_tx_info {TYPE_2__ control; } ;
typedef int __le16 ;
struct TYPE_6__ {scalar_t__ tx_packet_ring_addr; scalar_t__ tx_packet_ring_chunk_size; } ;
struct TYPE_4__ {scalar_t__ cipher; } ;


 int DEBUG_TX ;
 int EINVAL ;
 int GFP_KERNEL ;
 int WL1251_TKIP_IV_SPACE ;
 int WL1251_TX_ALIGN (int) ;
 scalar_t__ WLAN_CIPHER_SUITE_TKIP ;
 int cpu_to_le16 (int) ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 int ieee80211_hdrlen (int ) ;
 int le16_to_cpu (int ) ;
 int memmove (unsigned char*,unsigned char*,int) ;
 scalar_t__ skb_cloned (struct sk_buff*) ;
 struct sk_buff* skb_copy_expand (struct sk_buff*,int ,int,int ) ;
 unsigned char* skb_push (struct sk_buff*,int) ;
 int skb_reserve (struct sk_buff*,int) ;
 int skb_tailroom (struct sk_buff*) ;
 scalar_t__ unlikely (long) ;
 int wl1251_debug (int ,char*,size_t,...) ;
 int wl1251_error (char*) ;
 int wl1251_mem_write (struct wl1251*,scalar_t__,unsigned char*,int) ;

__attribute__((used)) static int wl1251_tx_send_packet(struct wl1251 *wl, struct sk_buff *skb,
     struct ieee80211_tx_info *control)
{
 struct tx_double_buffer_desc *tx_hdr;
 int len;
 u32 addr;

 if (!skb)
  return -EINVAL;

 tx_hdr = (struct tx_double_buffer_desc *) skb->data;

 if (control->control.hw_key &&
     control->control.hw_key->cipher == WLAN_CIPHER_SUITE_TKIP) {
  int hdrlen;
  __le16 fc;
  u16 length;
  u8 *pos;

  fc = *(__le16 *)(skb->data + sizeof(*tx_hdr));
  length = le16_to_cpu(tx_hdr->length) + WL1251_TKIP_IV_SPACE;
  tx_hdr->length = cpu_to_le16(length);

  hdrlen = ieee80211_hdrlen(fc);

  pos = skb_push(skb, WL1251_TKIP_IV_SPACE);
  memmove(pos, pos + WL1251_TKIP_IV_SPACE,
   sizeof(*tx_hdr) + hdrlen);
 }





 if (unlikely((long)skb->data & 0x03)) {
  int offset = (4 - (long)skb->data) & 0x03;
  wl1251_debug(DEBUG_TX, "skb offset %d", offset);


  if (skb_cloned(skb) || (skb_tailroom(skb) < offset)) {
   struct sk_buff *newskb = skb_copy_expand(skb, 0, 3,
         GFP_KERNEL);

   if (unlikely(newskb == ((void*)0))) {
    wl1251_error("Can't allocate skb!");
    return -EINVAL;
   }

   tx_hdr = (struct tx_double_buffer_desc *) newskb->data;

   dev_kfree_skb_any(skb);
   wl->tx_frames[tx_hdr->id] = skb = newskb;

   offset = (4 - (long)skb->data) & 0x03;
   wl1251_debug(DEBUG_TX, "new skb offset %d", offset);
  }


  if (offset) {
   unsigned char *src = skb->data;
   skb_reserve(skb, offset);
   memmove(skb->data, src, skb->len);
   tx_hdr = (struct tx_double_buffer_desc *) skb->data;
  }
 }


 len = WL1251_TX_ALIGN(skb->len);

 if (wl->data_in_count & 0x1)
  addr = wl->data_path->tx_packet_ring_addr +
   wl->data_path->tx_packet_ring_chunk_size;
 else
  addr = wl->data_path->tx_packet_ring_addr;

 wl1251_mem_write(wl, addr, skb->data, len);

 wl1251_debug(DEBUG_TX, "tx id %u skb 0x%p payload %u rate 0x%x "
       "queue %d", tx_hdr->id, skb, tx_hdr->length,
       tx_hdr->rate, tx_hdr->xmit_queue);

 return 0;
}
