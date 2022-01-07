
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sk_buff {int truesize; } ;
struct TYPE_4__ {int length; } ;
struct atmtcp_control {int type; int vcc; TYPE_1__ hdr; } ;
struct atm_vcc {int dev; int flags; int (* push ) (struct atm_vcc*,struct sk_buff*) ;} ;
typedef int atm_kptr_t ;
struct TYPE_6__ {struct atm_vcc* vcc; } ;
struct TYPE_5__ {int sk_sleep; } ;


 int ATMTCP_HDR_MAGIC ;
 int DECLARE_WAITQUEUE (int ,int ) ;
 int ENOMEM ;
 int EUNATCH ;
 int GFP_KERNEL ;
 TYPE_3__* PRIV (int ) ;
 int TASK_RUNNING ;
 int TASK_UNINTERRUPTIBLE ;
 int add_wait_queue (int ,int *) ;
 struct sk_buff* alloc_skb (int,int ) ;
 int atm_force_charge (struct atm_vcc*,int ) ;
 int current ;
 int dev_kfree_skb (struct sk_buff*) ;
 int mb () ;
 int memset (int *,int ,int) ;
 int remove_wait_queue (int ,int *) ;
 int schedule () ;
 int set_current_state (int ) ;
 TYPE_2__* sk_atm (struct atm_vcc*) ;
 scalar_t__ skb_put (struct sk_buff*,int) ;
 int stub1 (struct atm_vcc*,struct sk_buff*) ;
 int test_bit (int,int *) ;
 int wait ;

__attribute__((used)) static int atmtcp_send_control(struct atm_vcc *vcc,int type,
    const struct atmtcp_control *msg,int flag)
{
 DECLARE_WAITQUEUE(wait,current);
 struct atm_vcc *out_vcc;
 struct sk_buff *skb;
 struct atmtcp_control *new_msg;
 int old_test;
 int error = 0;

 out_vcc = PRIV(vcc->dev) ? PRIV(vcc->dev)->vcc : ((void*)0);
 if (!out_vcc) return -EUNATCH;
 skb = alloc_skb(sizeof(*msg),GFP_KERNEL);
 if (!skb) return -ENOMEM;
 mb();
 out_vcc = PRIV(vcc->dev) ? PRIV(vcc->dev)->vcc : ((void*)0);
 if (!out_vcc) {
  dev_kfree_skb(skb);
  return -EUNATCH;
 }
 atm_force_charge(out_vcc,skb->truesize);
 new_msg = (struct atmtcp_control *) skb_put(skb,sizeof(*new_msg));
 *new_msg = *msg;
 new_msg->hdr.length = ATMTCP_HDR_MAGIC;
 new_msg->type = type;
 memset(&new_msg->vcc,0,sizeof(atm_kptr_t));
 *(struct atm_vcc **) &new_msg->vcc = vcc;
 old_test = test_bit(flag,&vcc->flags);
 out_vcc->push(out_vcc,skb);
 add_wait_queue(sk_atm(vcc)->sk_sleep, &wait);
 while (test_bit(flag,&vcc->flags) == old_test) {
  mb();
  out_vcc = PRIV(vcc->dev) ? PRIV(vcc->dev)->vcc : ((void*)0);
  if (!out_vcc) {
   error = -EUNATCH;
   break;
  }
  set_current_state(TASK_UNINTERRUPTIBLE);
  schedule();
 }
 set_current_state(TASK_RUNNING);
 remove_wait_queue(sk_atm(vcc)->sk_sleep, &wait);
 return error;
}
