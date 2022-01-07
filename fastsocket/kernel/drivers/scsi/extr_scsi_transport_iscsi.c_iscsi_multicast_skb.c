
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct sk_buff {int dummy; } ;
typedef int gfp_t ;


 int nlmsg_multicast (int ,struct sk_buff*,int ,int ,int ) ;
 int nls ;

__attribute__((used)) static int
iscsi_multicast_skb(struct sk_buff *skb, uint32_t group, gfp_t gfp)
{
 return nlmsg_multicast(nls, skb, 0, group, gfp);
}
