
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {scalar_t__ sk_user_data; } ;
struct pppol2tp_tunnel {scalar_t__ magic; } ;


 int BUG_ON (int) ;
 scalar_t__ L2TP_TUNNEL_MAGIC ;
 int sock_hold (struct sock*) ;
 int sock_put (struct sock*) ;

__attribute__((used)) static inline struct pppol2tp_tunnel *pppol2tp_sock_to_tunnel(struct sock *sk)
{
 struct pppol2tp_tunnel *tunnel;

 if (sk == ((void*)0))
  return ((void*)0);

 sock_hold(sk);
 tunnel = (struct pppol2tp_tunnel *)(sk->sk_user_data);
 if (tunnel == ((void*)0)) {
  sock_put(sk);
  goto out;
 }

 BUG_ON(tunnel->magic != L2TP_TUNNEL_MAGIC);
out:
 return tunnel;
}
