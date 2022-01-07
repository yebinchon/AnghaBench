
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int len; scalar_t__ data; } ;
struct atmtcp_hdr {scalar_t__ length; int vci; int vpi; } ;
struct atmtcp_control {int dummy; } ;
struct atm_vcc {int (* pop ) (struct atm_vcc*,struct sk_buff*) ;TYPE_1__* stats; int (* push ) (struct atm_vcc*,struct sk_buff*) ;struct atm_dev* dev_data; } ;
struct atm_dev {int dummy; } ;
struct TYPE_2__ {int rx; int tx; int tx_err; } ;


 scalar_t__ ATMTCP_HDR_MAGIC ;
 int ENOBUFS ;
 int GFP_KERNEL ;
 int __net_timestamp (struct sk_buff*) ;
 struct sk_buff* atm_alloc_charge (struct atm_vcc*,int ,int ) ;
 int atmtcp_recv_control (struct atmtcp_control*) ;
 int atomic_inc (int *) ;
 int dev_kfree_skb (struct sk_buff*) ;
 struct atm_vcc* find_vcc (struct atm_dev*,int ,int ) ;
 int ntohs (int ) ;
 int read_lock (int *) ;
 int read_unlock (int *) ;
 int skb_copy_from_linear_data (struct sk_buff*,int ,int ) ;
 int skb_pull (struct sk_buff*,int) ;
 int skb_put (struct sk_buff*,int ) ;
 int stub1 (struct atm_vcc*,struct sk_buff*) ;
 int stub2 (struct atm_vcc*,struct sk_buff*) ;
 int vcc_sklist_lock ;

__attribute__((used)) static int atmtcp_c_send(struct atm_vcc *vcc,struct sk_buff *skb)
{
 struct atm_dev *dev;
 struct atmtcp_hdr *hdr;
 struct atm_vcc *out_vcc;
 struct sk_buff *new_skb;
 int result = 0;

 if (!skb->len) return 0;
 dev = vcc->dev_data;
 hdr = (struct atmtcp_hdr *) skb->data;
 if (hdr->length == ATMTCP_HDR_MAGIC) {
  result = atmtcp_recv_control(
      (struct atmtcp_control *) skb->data);
  goto done;
 }
 read_lock(&vcc_sklist_lock);
 out_vcc = find_vcc(dev, ntohs(hdr->vpi), ntohs(hdr->vci));
 read_unlock(&vcc_sklist_lock);
 if (!out_vcc) {
  atomic_inc(&vcc->stats->tx_err);
  goto done;
 }
 skb_pull(skb,sizeof(struct atmtcp_hdr));
 new_skb = atm_alloc_charge(out_vcc,skb->len,GFP_KERNEL);
 if (!new_skb) {
  result = -ENOBUFS;
  goto done;
 }
 __net_timestamp(new_skb);
 skb_copy_from_linear_data(skb, skb_put(new_skb, skb->len), skb->len);
 out_vcc->push(out_vcc,new_skb);
 atomic_inc(&vcc->stats->tx);
 atomic_inc(&out_vcc->stats->rx);
done:
 if (vcc->pop) vcc->pop(vcc,skb);
 else dev_kfree_skb(skb);
 return result;
}
