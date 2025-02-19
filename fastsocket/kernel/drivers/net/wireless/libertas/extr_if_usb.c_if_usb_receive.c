
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef int u32 ;
struct urb {int actual_length; int status; struct if_usb_card* context; } ;
struct sk_buff {int * data; } ;
struct lbs_private {int dummy; } ;
struct if_usb_card {TYPE_1__* udev; struct lbs_private* priv; struct sk_buff* rx_skb; } ;
typedef int __le32 ;
struct TYPE_2__ {int dev; } ;





 int IPFIELD_ALIGN_OFFSET ;
 int LBS_DEB_USB ;
 int if_usb_submit_rx_urb (struct if_usb_card*) ;
 int kfree_skb (struct sk_buff*) ;
 int lbs_deb_enter (int ) ;
 int lbs_deb_leave (int ) ;
 int lbs_deb_usbd (int *,char*,int,...) ;
 int lbs_queue_event (struct lbs_private*,int) ;
 int lbs_send_tx_feedback (struct lbs_private*,int) ;
 int le32_to_cpu (int ) ;
 int process_cmdrequest (int,int *,struct sk_buff*,struct if_usb_card*,struct lbs_private*) ;
 int process_cmdtypedata (int,struct sk_buff*,struct if_usb_card*,struct lbs_private*) ;

__attribute__((used)) static void if_usb_receive(struct urb *urb)
{
 struct if_usb_card *cardp = urb->context;
 struct sk_buff *skb = cardp->rx_skb;
 struct lbs_private *priv = cardp->priv;
 int recvlength = urb->actual_length;
 uint8_t *recvbuff = ((void*)0);
 uint32_t recvtype = 0;
 __le32 *pkt = (__le32 *)(skb->data + IPFIELD_ALIGN_OFFSET);
 uint32_t event;

 lbs_deb_enter(LBS_DEB_USB);

 if (recvlength) {
  if (urb->status) {
   lbs_deb_usbd(&cardp->udev->dev, "RX URB failed: %d\n",
         urb->status);
   kfree_skb(skb);
   goto setup_for_next;
  }

  recvbuff = skb->data + IPFIELD_ALIGN_OFFSET;
  recvtype = le32_to_cpu(pkt[0]);
  lbs_deb_usbd(&cardp->udev->dev,
       "Recv length = 0x%x, Recv type = 0x%X\n",
       recvlength, recvtype);
 } else if (urb->status) {
  kfree_skb(skb);
  goto rx_exit;
 }

 switch (recvtype) {
 case 130:
  process_cmdtypedata(recvlength, skb, cardp, priv);
  break;

 case 128:
  process_cmdrequest(recvlength, recvbuff, skb, cardp, priv);
  break;

 case 129:

  event = le32_to_cpu(pkt[1]);
  lbs_deb_usbd(&cardp->udev->dev, "**EVENT** 0x%X\n", event);
  kfree_skb(skb);


  if (event & 0xffff0000) {
   u32 trycount = (event & 0xffff0000) >> 16;

   lbs_send_tx_feedback(priv, trycount);
  } else
   lbs_queue_event(priv, event & 0xFF);
  break;

 default:
  lbs_deb_usbd(&cardp->udev->dev, "Unknown command type 0x%X\n",
        recvtype);
  kfree_skb(skb);
  break;
 }

setup_for_next:
 if_usb_submit_rx_urb(cardp);
rx_exit:
 lbs_deb_leave(LBS_DEB_USB);
}
