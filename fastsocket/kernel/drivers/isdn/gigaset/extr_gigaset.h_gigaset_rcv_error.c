
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct cardstate {int dummy; } ;
struct bc_state {int corrupted; scalar_t__ ignore; } ;


 int dev_kfree_skb (struct sk_buff*) ;
 int gigaset_isdn_rcv_err (struct bc_state*) ;

__attribute__((used)) static inline void gigaset_rcv_error(struct sk_buff *procskb,
         struct cardstate *cs,
         struct bc_state *bcs)
{
 if (procskb)
  dev_kfree_skb(procskb);

 if (bcs->ignore)
  --bcs->ignore;
 else {
  ++bcs->corrupted;
  gigaset_isdn_rcv_err(bcs);
 }
}
