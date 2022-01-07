
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct sk_buff {int len; scalar_t__ dev; } ;
struct TYPE_7__ {int sco_tx; int acl_tx; int cmd_tx; } ;
struct hci_dev {TYPE_1__ stat; scalar_t__ driver_data; } ;
struct TYPE_8__ {int type; int len; scalar_t__ zero; } ;
typedef TYPE_2__ nsh_t ;
struct TYPE_9__ {int txq; } ;
typedef TYPE_3__ dtl1_info_t ;
struct TYPE_10__ {int pkt_type; } ;


 int BT_ERR (char*) ;
 int EILSEQ ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_ATOMIC ;



 scalar_t__ NSHL ;
 TYPE_6__* bt_cb (struct sk_buff*) ;
 struct sk_buff* bt_skb_alloc (scalar_t__,int ) ;
 int dtl1_write_wakeup (TYPE_3__*) ;
 int kfree_skb (struct sk_buff*) ;
 int memcpy (int ,TYPE_2__*,scalar_t__) ;
 int skb_copy_from_linear_data (struct sk_buff*,scalar_t__*,int) ;
 int skb_push (struct sk_buff*,scalar_t__) ;
 scalar_t__* skb_put (struct sk_buff*,int) ;
 int skb_queue_tail (int *,struct sk_buff*) ;
 int skb_reserve (struct sk_buff*,scalar_t__) ;

__attribute__((used)) static int dtl1_hci_send_frame(struct sk_buff *skb)
{
 dtl1_info_t *info;
 struct hci_dev *hdev = (struct hci_dev *)(skb->dev);
 struct sk_buff *s;
 nsh_t nsh;

 if (!hdev) {
  BT_ERR("Frame for unknown HCI device (hdev=NULL)");
  return -ENODEV;
 }

 info = (dtl1_info_t *)(hdev->driver_data);

 switch (bt_cb(skb)->pkt_type) {
 case 129:
  hdev->stat.cmd_tx++;
  nsh.type = 0x81;
  break;
 case 130:
  hdev->stat.acl_tx++;
  nsh.type = 0x82;
  break;
 case 128:
  hdev->stat.sco_tx++;
  nsh.type = 0x83;
  break;
 default:
  return -EILSEQ;
 };

 nsh.zero = 0;
 nsh.len = skb->len;

 s = bt_skb_alloc(NSHL + skb->len + 1, GFP_ATOMIC);
 if (!s)
  return -ENOMEM;

 skb_reserve(s, NSHL);
 skb_copy_from_linear_data(skb, skb_put(s, skb->len), skb->len);
 if (skb->len & 0x0001)
  *skb_put(s, 1) = 0;


 memcpy(skb_push(s, NSHL), &nsh, NSHL);
 skb_queue_tail(&(info->txq), s);

 dtl1_write_wakeup(info);

 kfree_skb(skb);

 return 0;
}
