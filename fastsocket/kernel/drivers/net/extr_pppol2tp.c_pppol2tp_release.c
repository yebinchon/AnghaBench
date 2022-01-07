
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {struct sock* sk; } ;
struct sock {int sk_write_queue; int sk_receive_queue; int sk_state; } ;
struct sk_buff {int dummy; } ;
struct pppol2tp_session {int reorder_q; } ;


 int EBADF ;
 int PPPOX_DEAD ;
 int SOCK_DEAD ;
 int kfree_skb (struct sk_buff*) ;
 int lock_sock (struct sock*) ;
 struct pppol2tp_session* pppol2tp_sock_to_session (struct sock*) ;
 int pppox_unbind_sock (struct sock*) ;
 int release_sock (struct sock*) ;
 struct sk_buff* skb_dequeue (int *) ;
 int skb_queue_purge (int *) ;
 scalar_t__ sock_flag (struct sock*,int ) ;
 int sock_orphan (struct sock*) ;
 int sock_put (struct sock*) ;

__attribute__((used)) static int pppol2tp_release(struct socket *sock)
{
 struct sock *sk = sock->sk;
 struct pppol2tp_session *session;
 int error;

 if (!sk)
  return 0;

 error = -EBADF;
 lock_sock(sk);
 if (sock_flag(sk, SOCK_DEAD) != 0)
  goto error;

 pppox_unbind_sock(sk);


 sk->sk_state = PPPOX_DEAD;
 sock_orphan(sk);
 sock->sk = ((void*)0);

 session = pppol2tp_sock_to_session(sk);


 skb_queue_purge(&sk->sk_receive_queue);
 skb_queue_purge(&sk->sk_write_queue);
 if (session != ((void*)0)) {
  struct sk_buff *skb;
  while ((skb = skb_dequeue(&session->reorder_q))) {
   kfree_skb(skb);
   sock_put(sk);
  }
  sock_put(sk);
 }

 release_sock(sk);





 sock_put(sk);

 return 0;

error:
 release_sock(sk);
 return error;
}
