
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct t4_cqe {int dummy; } ;
struct sk_buff {int dummy; } ;
struct cpl_fw6_msg {int * data; } ;
struct c4iw_dev {int dummy; } ;


 int c4iw_ev_dispatch (struct c4iw_dev*,struct t4_cqe*) ;
 struct cpl_fw6_msg* cplhdr (struct sk_buff*) ;

__attribute__((used)) static int async_event(struct c4iw_dev *dev, struct sk_buff *skb)
{
 struct cpl_fw6_msg *rpl = cplhdr(skb);
 c4iw_ev_dispatch(dev, (struct t4_cqe *)&rpl->data[0]);
 return 0;
}
