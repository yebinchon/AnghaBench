
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {scalar_t__ cb; void* dev; } ;
struct hci_vendor_hdr {int dlen; } ;
struct hci_sco_hdr {int dlen; } ;
struct hci_event_hdr {int plen; } ;
struct TYPE_3__ {int byte_rx; } ;
struct hci_dev {int name; TYPE_1__ stat; struct bpa10x_data* driver_data; } ;
struct hci_acl_hdr {int dlen; } ;
struct bpa10x_data {struct sk_buff** rx_skb; } ;
typedef int __u8 ;
struct TYPE_4__ {int pkt_type; } ;


 int BT_DBG (char*,int ,int,void*,int) ;
 int BT_ERR (char*,int ) ;
 int EILSEQ ;
 int ENOMEM ;
 int GFP_ATOMIC ;

 int HCI_ACL_HDR_SIZE ;
 int HCI_EVENT_HDR_SIZE ;


 int HCI_SCO_HDR_SIZE ;
 int HCI_VENDOR_HDR_SIZE ;

 int __le16_to_cpu (int ) ;
 TYPE_2__* bt_cb (struct sk_buff*) ;
 struct sk_buff* bt_skb_alloc (int,int ) ;
 int hci_recv_frame (struct sk_buff*) ;
 int memcpy (int ,void*,int) ;
 int min (int,int) ;
 int skb_put (struct sk_buff*,int) ;

__attribute__((used)) static int bpa10x_recv(struct hci_dev *hdev, int queue, void *buf, int count)
{
 struct bpa10x_data *data = hdev->driver_data;

 BT_DBG("%s queue %d buffer %p count %d", hdev->name,
       queue, buf, count);

 if (queue < 0 || queue > 1)
  return -EILSEQ;

 hdev->stat.byte_rx += count;

 while (count) {
  struct sk_buff *skb = data->rx_skb[queue];
  struct { __u8 type; int expect; } *scb;
  int type, len = 0;

  if (!skb) {


   type = *((__u8 *) buf);
   count--; buf++;

   switch (type) {
   case 130:
    if (count >= HCI_EVENT_HDR_SIZE) {
     struct hci_event_hdr *h = buf;
     len = HCI_EVENT_HDR_SIZE + h->plen;
    } else
     return -EILSEQ;
    break;

   case 131:
    if (count >= HCI_ACL_HDR_SIZE) {
     struct hci_acl_hdr *h = buf;
     len = HCI_ACL_HDR_SIZE +
       __le16_to_cpu(h->dlen);
    } else
     return -EILSEQ;
    break;

   case 129:
    if (count >= HCI_SCO_HDR_SIZE) {
     struct hci_sco_hdr *h = buf;
     len = HCI_SCO_HDR_SIZE + h->dlen;
    } else
     return -EILSEQ;
    break;

   case 128:
    if (count >= HCI_VENDOR_HDR_SIZE) {
     struct hci_vendor_hdr *h = buf;
     len = HCI_VENDOR_HDR_SIZE +
       __le16_to_cpu(h->dlen);
    } else
     return -EILSEQ;
    break;
   }

   skb = bt_skb_alloc(len, GFP_ATOMIC);
   if (!skb) {
    BT_ERR("%s no memory for packet", hdev->name);
    return -ENOMEM;
   }

   skb->dev = (void *) hdev;

   data->rx_skb[queue] = skb;

   scb = (void *) skb->cb;
   scb->type = type;
   scb->expect = len;
  } else {


   scb = (void *) skb->cb;
   len = scb->expect;
  }

  len = min(len, count);

  memcpy(skb_put(skb, len), buf, len);

  scb->expect -= len;

  if (scb->expect == 0) {


   data->rx_skb[queue] = ((void*)0);

   bt_cb(skb)->pkt_type = scb->type;
   hci_recv_frame(skb);
  }

  count -= len; buf += len;
 }

 return 0;
}
