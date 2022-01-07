
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netlink_skb_parms {int dummy; } ;
struct cn_msg {int len; int ack; int seq; scalar_t__ data; } ;
typedef enum proc_cn_mcast_op { ____Placeholder_proc_cn_mcast_op } proc_cn_mcast_op ;


 int EINVAL ;


 int atomic_dec (int *) ;
 int atomic_inc (int *) ;
 int cn_proc_ack (int,int ,int ) ;
 int proc_event_num_listeners ;

__attribute__((used)) static void cn_proc_mcast_ctl(struct cn_msg *msg,
         struct netlink_skb_parms *nsp)
{
 enum proc_cn_mcast_op *mc_op = ((void*)0);
 int err = 0;

 if (msg->len != sizeof(*mc_op))
  return;

 mc_op = (enum proc_cn_mcast_op*)msg->data;
 switch (*mc_op) {
 case 128:
  atomic_inc(&proc_event_num_listeners);
  break;
 case 129:
  atomic_dec(&proc_event_num_listeners);
  break;
 default:
  err = EINVAL;
  break;
 }
 cn_proc_ack(err, msg->seq, msg->ack);
}
