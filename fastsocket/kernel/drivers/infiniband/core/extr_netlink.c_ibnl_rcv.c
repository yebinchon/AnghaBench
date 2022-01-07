
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;


 int ibnl_mutex ;
 int ibnl_rcv_msg ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int netlink_rcv_skb (struct sk_buff*,int *) ;

__attribute__((used)) static void ibnl_rcv(struct sk_buff *skb)
{
 mutex_lock(&ibnl_mutex);
 netlink_rcv_skb(skb, &ibnl_rcv_msg);
 mutex_unlock(&ibnl_mutex);
}
