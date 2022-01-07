
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {void* dev; } ;
struct hci_sco_hdr {int dlen; } ;
struct hci_event_hdr {int plen; } ;
struct hci_acl_hdr {int dlen; } ;
struct bfusb_data {struct sk_buff* reassembly; TYPE_1__* hdev; } ;
struct TYPE_4__ {unsigned char pkt_type; } ;
struct TYPE_3__ {int name; } ;


 int BT_DBG (char*,struct bfusb_data*,int,unsigned char*,int) ;
 int BT_ERR (char*,int ) ;
 int EILSEQ ;
 int EIO ;
 int ENOMEM ;
 int EPROTO ;
 int GFP_ATOMIC ;

 int HCI_ACL_HDR_SIZE ;
 int HCI_EVENT_HDR_SIZE ;


 int HCI_SCO_HDR_SIZE ;
 int __le16_to_cpu (int ) ;
 TYPE_2__* bt_cb (struct sk_buff*) ;
 struct sk_buff* bt_skb_alloc (int,int ) ;
 int hci_recv_frame (struct sk_buff*) ;
 int kfree_skb (struct sk_buff*) ;
 int memcpy (int ,unsigned char*,int) ;
 int skb_put (struct sk_buff*,int) ;

__attribute__((used)) static inline int bfusb_recv_block(struct bfusb_data *data, int hdr, unsigned char *buf, int len)
{
 BT_DBG("bfusb %p hdr 0x%02x data %p len %d", data, hdr, buf, len);

 if (hdr & 0x10) {
  BT_ERR("%s error in block", data->hdev->name);
  kfree_skb(data->reassembly);
  data->reassembly = ((void*)0);
  return -EIO;
 }

 if (hdr & 0x04) {
  struct sk_buff *skb;
  unsigned char pkt_type;
  int pkt_len = 0;

  if (data->reassembly) {
   BT_ERR("%s unexpected start block", data->hdev->name);
   kfree_skb(data->reassembly);
   data->reassembly = ((void*)0);
  }

  if (len < 1) {
   BT_ERR("%s no packet type found", data->hdev->name);
   return -EPROTO;
  }

  pkt_type = *buf++; len--;

  switch (pkt_type) {
  case 129:
   if (len >= HCI_EVENT_HDR_SIZE) {
    struct hci_event_hdr *hdr = (struct hci_event_hdr *) buf;
    pkt_len = HCI_EVENT_HDR_SIZE + hdr->plen;
   } else {
    BT_ERR("%s event block is too short", data->hdev->name);
    return -EILSEQ;
   }
   break;

  case 130:
   if (len >= HCI_ACL_HDR_SIZE) {
    struct hci_acl_hdr *hdr = (struct hci_acl_hdr *) buf;
    pkt_len = HCI_ACL_HDR_SIZE + __le16_to_cpu(hdr->dlen);
   } else {
    BT_ERR("%s data block is too short", data->hdev->name);
    return -EILSEQ;
   }
   break;

  case 128:
   if (len >= HCI_SCO_HDR_SIZE) {
    struct hci_sco_hdr *hdr = (struct hci_sco_hdr *) buf;
    pkt_len = HCI_SCO_HDR_SIZE + hdr->dlen;
   } else {
    BT_ERR("%s audio block is too short", data->hdev->name);
    return -EILSEQ;
   }
   break;
  }

  skb = bt_skb_alloc(pkt_len, GFP_ATOMIC);
  if (!skb) {
   BT_ERR("%s no memory for the packet", data->hdev->name);
   return -ENOMEM;
  }

  skb->dev = (void *) data->hdev;
  bt_cb(skb)->pkt_type = pkt_type;

  data->reassembly = skb;
 } else {
  if (!data->reassembly) {
   BT_ERR("%s unexpected continuation block", data->hdev->name);
   return -EIO;
  }
 }

 if (len > 0)
  memcpy(skb_put(data->reassembly, len), buf, len);

 if (hdr & 0x08) {
  hci_recv_frame(data->reassembly);
  data->reassembly = ((void*)0);
 }

 return 0;
}
