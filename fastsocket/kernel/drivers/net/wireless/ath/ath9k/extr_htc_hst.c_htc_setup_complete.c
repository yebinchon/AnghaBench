
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int len; } ;
struct htc_target {int dev; int cmd_wait; int htc_flags; } ;
struct htc_frame_hdr {int dummy; } ;
struct htc_comp_msg {int msg_id; } ;


 int EINVAL ;
 int ENDPOINT0 ;
 int ENOMEM ;
 int ETIMEDOUT ;
 int GFP_ATOMIC ;
 int HTC_MSG_SETUP_COMPLETE_ID ;
 int HTC_OP_START_WAIT ;
 int HZ ;
 struct sk_buff* alloc_skb (int,int ) ;
 int cpu_to_be16 (int ) ;
 int dev_err (int ,char*) ;
 int htc_issue_send (struct htc_target*,struct sk_buff*,int ,int ,int ) ;
 int kfree_skb (struct sk_buff*) ;
 scalar_t__ skb_put (struct sk_buff*,int) ;
 int skb_reserve (struct sk_buff*,int) ;
 int wait_for_completion_timeout (int *,int ) ;

__attribute__((used)) static int htc_setup_complete(struct htc_target *target)
{
 struct sk_buff *skb;
 struct htc_comp_msg *comp_msg;
 int ret = 0, time_left;

 skb = alloc_skb(50 + sizeof(struct htc_frame_hdr), GFP_ATOMIC);
 if (!skb) {
  dev_err(target->dev, "failed to allocate send buffer\n");
  return -ENOMEM;
 }
 skb_reserve(skb, sizeof(struct htc_frame_hdr));

 comp_msg = (struct htc_comp_msg *)
  skb_put(skb, sizeof(struct htc_comp_msg));
 comp_msg->msg_id = cpu_to_be16(HTC_MSG_SETUP_COMPLETE_ID);

 target->htc_flags |= HTC_OP_START_WAIT;

 ret = htc_issue_send(target, skb, skb->len, 0, ENDPOINT0);
 if (ret)
  goto err;

 time_left = wait_for_completion_timeout(&target->cmd_wait, HZ);
 if (!time_left) {
  dev_err(target->dev, "HTC start timeout\n");
  return -ETIMEDOUT;
 }

 return 0;

err:
 kfree_skb(skb);
 return -EINVAL;
}
