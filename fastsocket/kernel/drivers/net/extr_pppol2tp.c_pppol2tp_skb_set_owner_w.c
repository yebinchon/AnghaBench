
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct sk_buff {int destructor; struct sock* sk; } ;


 int pppol2tp_sock_wfree ;
 int sock_hold (struct sock*) ;

__attribute__((used)) static inline void pppol2tp_skb_set_owner_w(struct sk_buff *skb, struct sock *sk)
{
 sock_hold(sk);
 skb->sk = sk;
 skb->destructor = pppol2tp_sock_wfree;
}
