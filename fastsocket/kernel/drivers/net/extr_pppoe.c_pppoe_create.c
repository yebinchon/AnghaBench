
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int * ops; int state; } ;
struct sock {int sk_protocol; int sk_family; int sk_type; int sk_state; int sk_backlog_rcv; } ;
struct net {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int PF_PPPOX ;
 int PPPOX_NONE ;
 int PX_PROTO_OE ;
 int SOCK_STREAM ;
 int SS_UNCONNECTED ;
 int pppoe_ops ;
 int pppoe_rcv_core ;
 int pppoe_sk_proto ;
 struct sock* sk_alloc (struct net*,int ,int ,int *) ;
 int sock_init_data (struct socket*,struct sock*) ;

__attribute__((used)) static int pppoe_create(struct net *net, struct socket *sock)
{
 struct sock *sk;

 sk = sk_alloc(net, PF_PPPOX, GFP_KERNEL, &pppoe_sk_proto);
 if (!sk)
  return -ENOMEM;

 sock_init_data(sock, sk);

 sock->state = SS_UNCONNECTED;
 sock->ops = &pppoe_ops;

 sk->sk_backlog_rcv = pppoe_rcv_core;
 sk->sk_state = PPPOX_NONE;
 sk->sk_type = SOCK_STREAM;
 sk->sk_family = PF_PPPOX;
 sk->sk_protocol = PX_PROTO_OE;

 return 0;
}
