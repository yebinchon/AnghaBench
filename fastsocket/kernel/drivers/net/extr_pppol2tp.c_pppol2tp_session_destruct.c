
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {struct pppol2tp_session* sk_user_data; } ;
struct pppol2tp_tunnel {scalar_t__ magic; int hlist_lock; } ;
struct TYPE_2__ {scalar_t__ s_session; } ;
struct pppol2tp_session {scalar_t__ magic; int * tunnel_sock; struct pppol2tp_tunnel* tunnel; int hlist; TYPE_1__ tunnel_addr; } ;


 int BUG_ON (int) ;
 scalar_t__ L2TP_SESSION_MAGIC ;
 scalar_t__ L2TP_TUNNEL_MAGIC ;
 int atomic_dec (int *) ;
 int hlist_del_init (int *) ;
 int kfree (struct pppol2tp_session*) ;
 int pppol2tp_session_count ;
 int pppol2tp_tunnel_dec_refcount (struct pppol2tp_tunnel*) ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

__attribute__((used)) static void pppol2tp_session_destruct(struct sock *sk)
{
 struct pppol2tp_session *session = ((void*)0);

 if (sk->sk_user_data != ((void*)0)) {
  struct pppol2tp_tunnel *tunnel;

  session = sk->sk_user_data;
  if (session == ((void*)0))
   goto out;

  BUG_ON(session->magic != L2TP_SESSION_MAGIC);







  tunnel = session->tunnel;
  if (tunnel != ((void*)0)) {
   BUG_ON(tunnel->magic != L2TP_TUNNEL_MAGIC);






   if (session->tunnel_addr.s_session != 0) {



    write_lock_bh(&tunnel->hlist_lock);
    hlist_del_init(&session->hlist);
    write_unlock_bh(&tunnel->hlist_lock);

    atomic_dec(&pppol2tp_session_count);
   }




   session->tunnel = ((void*)0);
   session->tunnel_sock = ((void*)0);
   pppol2tp_tunnel_dec_refcount(tunnel);
  }
 }

 kfree(session);
out:
 return;
}
