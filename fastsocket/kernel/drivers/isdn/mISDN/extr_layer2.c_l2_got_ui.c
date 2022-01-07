
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct layer2 {scalar_t__ tm; } ;
struct FsmInst {struct layer2* userdata; } ;


 int DL_UNITDATA_IND ;
 int MDL_STATUS_UI_IND ;
 int l2_tei (struct layer2*,int ,int ) ;
 int l2headersize (struct layer2*,int) ;
 int l2up (struct layer2*,int ,struct sk_buff*) ;
 int skb_pull (struct sk_buff*,int ) ;

__attribute__((used)) static void
l2_got_ui(struct FsmInst *fi, int event, void *arg)
{
 struct layer2 *l2 = fi->userdata;
 struct sk_buff *skb = arg;

 skb_pull(skb, l2headersize(l2, 1));




 if (l2->tm)
  l2_tei(l2, MDL_STATUS_UI_IND, 0);
 l2up(l2, DL_UNITDATA_IND, skb);
}
