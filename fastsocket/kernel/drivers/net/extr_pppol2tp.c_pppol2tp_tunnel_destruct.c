
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int (* sk_destruct ) (struct sock*) ;struct pppol2tp_tunnel* sk_user_data; } ;
struct pppol2tp_tunnel {int (* old_sk_destruct ) (struct sock*) ;int * sock; int name; int debug; } ;
struct TYPE_2__ {int * encap_rcv; scalar_t__ encap_type; } ;


 int KERN_INFO ;
 int PPPOL2TP_MSG_CONTROL ;
 int PRINTK (int ,int ,int ,char*,int ) ;
 int pppol2tp_tunnel_closeall (struct pppol2tp_tunnel*) ;
 int pppol2tp_tunnel_dec_refcount (struct pppol2tp_tunnel*) ;
 int stub1 (struct sock*) ;
 TYPE_1__* udp_sk (struct sock*) ;

__attribute__((used)) static void pppol2tp_tunnel_destruct(struct sock *sk)
{
 struct pppol2tp_tunnel *tunnel;

 tunnel = sk->sk_user_data;
 if (tunnel == ((void*)0))
  goto end;

 PRINTK(tunnel->debug, PPPOL2TP_MSG_CONTROL, KERN_INFO,
        "%s: closing...\n", tunnel->name);


 pppol2tp_tunnel_closeall(tunnel);


 (udp_sk(sk))->encap_type = 0;
 (udp_sk(sk))->encap_rcv = ((void*)0);


 tunnel->sock = ((void*)0);
 sk->sk_destruct = tunnel->old_sk_destruct;
 sk->sk_user_data = ((void*)0);


 if (sk->sk_destruct != ((void*)0))
  (*sk->sk_destruct)(sk);

 pppol2tp_tunnel_dec_refcount(tunnel);

end:
 return;
}
