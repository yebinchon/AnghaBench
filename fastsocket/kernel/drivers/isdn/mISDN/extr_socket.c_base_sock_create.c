
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {scalar_t__ type; int state; int * ops; } ;
struct sock {int sk_protocol; int sk_state; } ;
struct net {int dummy; } ;


 int ENOMEM ;
 int ESOCKTNOSUPPORT ;
 int GFP_KERNEL ;
 int MISDN_OPEN ;
 int PF_ISDN ;
 scalar_t__ SOCK_RAW ;
 int SOCK_ZAPPED ;
 int SS_UNCONNECTED ;
 int base_sock_ops ;
 int base_sockets ;
 int mISDN_proto ;
 int mISDN_sock_link (int *,struct sock*) ;
 struct sock* sk_alloc (struct net*,int ,int ,int *) ;
 int sock_init_data (struct socket*,struct sock*) ;
 int sock_reset_flag (struct sock*,int ) ;

__attribute__((used)) static int
base_sock_create(struct net *net, struct socket *sock, int protocol)
{
 struct sock *sk;

 if (sock->type != SOCK_RAW)
  return -ESOCKTNOSUPPORT;

 sk = sk_alloc(net, PF_ISDN, GFP_KERNEL, &mISDN_proto);
 if (!sk)
  return -ENOMEM;

 sock_init_data(sock, sk);
 sock->ops = &base_sock_ops;
 sock->state = SS_UNCONNECTED;
 sock_reset_flag(sk, SOCK_ZAPPED);
 sk->sk_protocol = protocol;
 sk->sk_state = MISDN_OPEN;
 mISDN_sock_link(&base_sockets, sk);

 return 0;
}
