
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct sk_buff {int len; } ;
struct pppol2tp_tunnel {int name; int debug; } ;


 int KERN_DEBUG ;
 int PPPOL2TP_MSG_DATA ;
 int PRINTK (int ,int ,int ,char*,int ,int ) ;
 scalar_t__ pppol2tp_recv_core (struct sock*,struct sk_buff*) ;
 struct pppol2tp_tunnel* pppol2tp_sock_to_tunnel (struct sock*) ;
 int sock_put (struct sock*) ;

__attribute__((used)) static int pppol2tp_udp_encap_recv(struct sock *sk, struct sk_buff *skb)
{
 struct pppol2tp_tunnel *tunnel;

 tunnel = pppol2tp_sock_to_tunnel(sk);
 if (tunnel == ((void*)0))
  goto pass_up;

 PRINTK(tunnel->debug, PPPOL2TP_MSG_DATA, KERN_DEBUG,
        "%s: received %d bytes\n", tunnel->name, skb->len);

 if (pppol2tp_recv_core(sk, skb))
  goto pass_up_put;

 sock_put(sk);
 return 0;

pass_up_put:
 sock_put(sk);
pass_up:
 return 1;
}
