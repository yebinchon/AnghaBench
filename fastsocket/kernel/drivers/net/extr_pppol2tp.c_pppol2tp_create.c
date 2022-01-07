
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int * ops; int state; } ;
struct sock {int sk_destruct; int sk_type; int sk_state; int sk_family; int sk_protocol; int sk_backlog_rcv; } ;
struct net {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int PF_PPPOX ;
 int PPPOX_NONE ;
 int PX_PROTO_OL2TP ;
 int SOCK_STREAM ;
 int SS_UNCONNECTED ;
 int pppol2tp_ops ;
 int pppol2tp_recv_core ;
 int pppol2tp_session_destruct ;
 int pppol2tp_sk_proto ;
 struct sock* sk_alloc (struct net*,int ,int ,int *) ;
 int sock_init_data (struct socket*,struct sock*) ;

__attribute__((used)) static int pppol2tp_create(struct net *net, struct socket *sock)
{
 int error = -ENOMEM;
 struct sock *sk;

 sk = sk_alloc(net, PF_PPPOX, GFP_KERNEL, &pppol2tp_sk_proto);
 if (!sk)
  goto out;

 sock_init_data(sock, sk);

 sock->state = SS_UNCONNECTED;
 sock->ops = &pppol2tp_ops;

 sk->sk_backlog_rcv = pppol2tp_recv_core;
 sk->sk_protocol = PX_PROTO_OL2TP;
 sk->sk_family = PF_PPPOX;
 sk->sk_state = PPPOX_NONE;
 sk->sk_type = SOCK_STREAM;
 sk->sk_destruct = pppol2tp_session_destruct;

 error = 0;

out:
 return error;
}
