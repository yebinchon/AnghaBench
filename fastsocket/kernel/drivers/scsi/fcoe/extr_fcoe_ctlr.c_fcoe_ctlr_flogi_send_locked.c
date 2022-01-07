
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {scalar_t__ data; } ;
struct fcoe_ctlr {TYPE_1__* sel_fcf; int (* send ) (struct fcoe_ctlr*,struct sk_buff*) ;int lp; struct sk_buff* flogi_req; } ;
struct fc_frame_header {int fh_d_id; } ;
struct TYPE_2__ {int flogi_sent; } ;


 int EINVAL ;
 int FIP_DT_FLOGI ;
 int GFP_ATOMIC ;
 int fcoe_ctlr_encaps (struct fcoe_ctlr*,int ,int ,struct sk_buff*,int ) ;
 int kfree_skb (struct sk_buff*) ;
 int ntoh24 (int ) ;
 struct sk_buff* skb_clone (struct sk_buff*,int ) ;
 int stub1 (struct fcoe_ctlr*,struct sk_buff*) ;

__attribute__((used)) static int fcoe_ctlr_flogi_send_locked(struct fcoe_ctlr *fip)
{
 struct sk_buff *skb;
 struct sk_buff *skb_orig;
 struct fc_frame_header *fh;
 int error;

 skb_orig = fip->flogi_req;
 if (!skb_orig)
  return -EINVAL;




 skb = skb_clone(skb_orig, GFP_ATOMIC);
 if (!skb) {
  skb = skb_orig;
  fip->flogi_req = ((void*)0);
 }
 fh = (struct fc_frame_header *)skb->data;
 error = fcoe_ctlr_encaps(fip, fip->lp, FIP_DT_FLOGI, skb,
     ntoh24(fh->fh_d_id));
 if (error) {
  kfree_skb(skb);
  return error;
 }
 fip->send(fip, skb);
 fip->sel_fcf->flogi_sent = 1;
 return 0;
}
