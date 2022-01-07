
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct t3cdev {int dummy; } ;
struct sk_buff {int dummy; } ;


 int cxgbi_sock_act_open_req_arp_failure (int *,struct sk_buff*) ;

__attribute__((used)) static inline void act_open_arp_failure(struct t3cdev *dev, struct sk_buff *skb)
{
 cxgbi_sock_act_open_req_arp_failure(((void*)0), skb);
}
