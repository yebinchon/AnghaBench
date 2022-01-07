
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct sk_buff {int destructor; struct sock* sk; } ;


 int skb_orphan (struct sk_buff*) ;
 int sock_hold (struct sock*) ;
 int vxlan_sock_put ;

__attribute__((used)) static void vxlan_set_owner(struct sock *sk, struct sk_buff *skb)
{
 skb_orphan(skb);
 sock_hold(sk);
 skb->sk = sk;
 skb->destructor = vxlan_sock_put;
}
