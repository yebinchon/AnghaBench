
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct nlmsghdr {int nlmsg_len; } ;


 int NLM_F_MULTI ;
 int RDMA_NL_GET_TYPE (int,int) ;
 void* nlmsg_data (struct nlmsghdr*) ;
 struct nlmsghdr* nlmsg_put (struct sk_buff*,int ,int,int ,int,int ) ;
 int nlmsg_trim (struct sk_buff*,unsigned char*) ;
 unsigned char* skb_tail_pointer (struct sk_buff*) ;

void *ibnl_put_msg(struct sk_buff *skb, struct nlmsghdr **nlh, int seq,
     int len, int client, int op)
{
 unsigned char *prev_tail;

 prev_tail = skb_tail_pointer(skb);
 *nlh = nlmsg_put(skb, 0, seq, RDMA_NL_GET_TYPE(client, op),
    len, NLM_F_MULTI);
 if (!*nlh)
  goto out_nlmsg_trim;
 (*nlh)->nlmsg_len = skb_tail_pointer(skb) - prev_tail;
 return nlmsg_data(*nlh);

out_nlmsg_trim:
 nlmsg_trim(skb, prev_tail);
 return ((void*)0);
}
