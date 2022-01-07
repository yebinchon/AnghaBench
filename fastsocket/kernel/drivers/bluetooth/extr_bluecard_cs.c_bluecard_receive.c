
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_6__ ;
typedef struct TYPE_23__ TYPE_5__ ;
typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;
typedef struct TYPE_18__ TYPE_13__ ;


struct hci_sco_hdr {int dlen; } ;
struct hci_event_hdr {scalar_t__ plen; } ;
struct hci_acl_hdr {int dlen; } ;
typedef int buf ;
struct TYPE_23__ {int rx_state; scalar_t__ rx_count; TYPE_4__* hdev; TYPE_6__* rx_skb; int tx_state; TYPE_2__* p_dev; } ;
typedef TYPE_5__ bluecard_info_t ;
struct TYPE_24__ {void* dev; } ;
struct TYPE_21__ {int byte_rx; int err_rx; } ;
struct TYPE_22__ {TYPE_3__ stat; } ;
struct TYPE_19__ {unsigned int BasePort1; } ;
struct TYPE_20__ {TYPE_1__ io; } ;
struct TYPE_18__ {unsigned char pkt_type; } ;


 int BT_ERR (char*,...) ;
 int GFP_ATOMIC ;

 scalar_t__ HCI_ACL_HDR_SIZE ;
 scalar_t__ HCI_EVENT_HDR_SIZE ;

 int HCI_MAX_FRAME_SIZE ;

 scalar_t__ HCI_SCO_HDR_SIZE ;



 int RECV_WAIT_PACKET_TYPE ;

 int XMIT_BUF_ONE_READY ;
 int XMIT_BUF_TWO_READY ;
 int XMIT_SENDING_READY ;
 int __le16_to_cpu (int ) ;
 int bluecard_enable_activity_led (TYPE_5__*) ;
 int bluecard_read (unsigned int,unsigned int,unsigned char*,int) ;
 int bluecard_write_wakeup (TYPE_5__*) ;
 TYPE_13__* bt_cb (TYPE_6__*) ;
 TYPE_6__* bt_skb_alloc (int ,int ) ;
 struct hci_acl_hdr* hci_acl_hdr (TYPE_6__*) ;
 struct hci_event_hdr* hci_event_hdr (TYPE_6__*) ;
 int hci_recv_frame (TYPE_6__*) ;
 struct hci_sco_hdr* hci_sco_hdr (TYPE_6__*) ;
 int kfree_skb (TYPE_6__*) ;
 int set_bit (int ,int *) ;
 unsigned char* skb_put (TYPE_6__*,int) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void bluecard_receive(bluecard_info_t *info, unsigned int offset)
{
 unsigned int iobase;
 unsigned char buf[31];
 int i, len;

 if (!info) {
  BT_ERR("Unknown device");
  return;
 }

 iobase = info->p_dev->io.BasePort1;

 if (test_bit(XMIT_SENDING_READY, &(info->tx_state)))
  bluecard_enable_activity_led(info);

 len = bluecard_read(iobase, offset, buf, sizeof(buf));

 for (i = 0; i < len; i++) {


  if (info->rx_skb == ((void*)0)) {
   info->rx_state = RECV_WAIT_PACKET_TYPE;
   info->rx_count = 0;
   if (!(info->rx_skb = bt_skb_alloc(HCI_MAX_FRAME_SIZE, GFP_ATOMIC))) {
    BT_ERR("Can't allocate mem for new packet");
    return;
   }
  }

  if (info->rx_state == RECV_WAIT_PACKET_TYPE) {

   info->rx_skb->dev = (void *) info->hdev;
   bt_cb(info->rx_skb)->pkt_type = buf[i];

   switch (bt_cb(info->rx_skb)->pkt_type) {

   case 0x00:

    if (offset != 0x00) {
     set_bit(XMIT_BUF_ONE_READY, &(info->tx_state));
     set_bit(XMIT_BUF_TWO_READY, &(info->tx_state));
     set_bit(XMIT_SENDING_READY, &(info->tx_state));
     bluecard_write_wakeup(info);
    }

    kfree_skb(info->rx_skb);
    info->rx_skb = ((void*)0);
    break;

   case 133:
    info->rx_state = 129;
    info->rx_count = HCI_EVENT_HDR_SIZE;
    break;

   case 134:
    info->rx_state = 131;
    info->rx_count = HCI_ACL_HDR_SIZE;
    break;

   case 132:
    info->rx_state = 128;
    info->rx_count = HCI_SCO_HDR_SIZE;
    break;

   default:

    BT_ERR("Unknown HCI packet with type 0x%02x received", bt_cb(info->rx_skb)->pkt_type);
    info->hdev->stat.err_rx++;

    kfree_skb(info->rx_skb);
    info->rx_skb = ((void*)0);
    break;

   }

  } else {

   *skb_put(info->rx_skb, 1) = buf[i];
   info->rx_count--;

   if (info->rx_count == 0) {

    int dlen;
    struct hci_event_hdr *eh;
    struct hci_acl_hdr *ah;
    struct hci_sco_hdr *sh;

    switch (info->rx_state) {

    case 129:
     eh = hci_event_hdr(info->rx_skb);
     info->rx_state = 130;
     info->rx_count = eh->plen;
     break;

    case 131:
     ah = hci_acl_hdr(info->rx_skb);
     dlen = __le16_to_cpu(ah->dlen);
     info->rx_state = 130;
     info->rx_count = dlen;
     break;

    case 128:
     sh = hci_sco_hdr(info->rx_skb);
     info->rx_state = 130;
     info->rx_count = sh->dlen;
     break;

    case 130:
     hci_recv_frame(info->rx_skb);
     info->rx_skb = ((void*)0);
     break;

    }

   }

  }


 }

 info->hdev->stat.byte_rx += len;
}
