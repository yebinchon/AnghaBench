
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct urb {int status; int actual_length; int dev; int * transfer_buffer; struct catc* context; } ;
struct sk_buff {int protocol; } ;
struct catc {int flags; int usbdev; int recq_sz; scalar_t__ is_f5u011; TYPE_2__* netdev; } ;
typedef int __le16 ;
struct TYPE_3__ {int rx_bytes; int rx_packets; int rx_errors; int rx_length_errors; } ;
struct TYPE_4__ {TYPE_1__ stats; } ;


 int GFP_ATOMIC ;
 int RX_RUNNING ;
 int atomic_dec (int *) ;
 scalar_t__ atomic_read (int *) ;
 int clear_bit (int ,int *) ;
 int dbg (char*,...) ;
 struct sk_buff* dev_alloc_skb (int) ;
 int eth_type_trans (struct sk_buff*,TYPE_2__*) ;
 int le16_to_cpup (int *) ;
 int netif_rx (struct sk_buff*) ;
 int skb_copy_to_linear_data (struct sk_buff*,int *,int) ;
 int skb_put (struct sk_buff*,int) ;
 int usb_submit_urb (struct urb*,int ) ;

__attribute__((used)) static void catc_rx_done(struct urb *urb)
{
 struct catc *catc = urb->context;
 u8 *pkt_start = urb->transfer_buffer;
 struct sk_buff *skb;
 int pkt_len, pkt_offset = 0;
 int status = urb->status;

 if (!catc->is_f5u011) {
  clear_bit(RX_RUNNING, &catc->flags);
  pkt_offset = 2;
 }

 if (status) {
  dbg("rx_done, status %d, length %d", status, urb->actual_length);
  return;
 }

 do {
  if(!catc->is_f5u011) {
   pkt_len = le16_to_cpup((__le16*)pkt_start);
   if (pkt_len > urb->actual_length) {
    catc->netdev->stats.rx_length_errors++;
    catc->netdev->stats.rx_errors++;
    break;
   }
  } else {
   pkt_len = urb->actual_length;
  }

  if (!(skb = dev_alloc_skb(pkt_len)))
   return;

  skb_copy_to_linear_data(skb, pkt_start + pkt_offset, pkt_len);
  skb_put(skb, pkt_len);

  skb->protocol = eth_type_trans(skb, catc->netdev);
  netif_rx(skb);

  catc->netdev->stats.rx_packets++;
  catc->netdev->stats.rx_bytes += pkt_len;


  if (catc->is_f5u011)
   break;
  pkt_start += (((pkt_len + 1) >> 6) + 1) << 6;

 } while (pkt_start - (u8 *) urb->transfer_buffer < urb->actual_length);

 if (catc->is_f5u011) {
  if (atomic_read(&catc->recq_sz)) {
   int state;
   atomic_dec(&catc->recq_sz);
   dbg("getting extra packet");
   urb->dev = catc->usbdev;
   if ((state = usb_submit_urb(urb, GFP_ATOMIC)) < 0) {
    dbg("submit(rx_urb) status %d", state);
   }
  } else {
   clear_bit(RX_RUNNING, &catc->flags);
  }
 }
}
