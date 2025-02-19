
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct socket {struct sock* sk; } ;
struct sock {int sk_state; int * sk_user_data; } ;
struct pppol2tp_tunnel {int dummy; } ;
struct TYPE_2__ {scalar_t__ s_session; scalar_t__ d_session; } ;
struct pppol2tp_session {struct sock* tunnel_sock; TYPE_1__ tunnel_addr; } ;


 int EBADF ;
 int ENOTCONN ;
 int PPPOX_BOUND ;
 int PPPOX_CONNECTED ;
 int SOCK_DEAD ;
 int pppol2tp_session_ioctl (struct pppol2tp_session*,unsigned int,unsigned long) ;
 struct pppol2tp_session* pppol2tp_sock_to_session (struct sock*) ;
 struct pppol2tp_tunnel* pppol2tp_sock_to_tunnel (struct sock*) ;
 int pppol2tp_tunnel_ioctl (struct pppol2tp_tunnel*,unsigned int,unsigned long) ;
 scalar_t__ sock_flag (struct sock*,int ) ;
 int sock_put (struct sock*) ;

__attribute__((used)) static int pppol2tp_ioctl(struct socket *sock, unsigned int cmd,
     unsigned long arg)
{
 struct sock *sk = sock->sk;
 struct pppol2tp_session *session;
 struct pppol2tp_tunnel *tunnel;
 int err;

 if (!sk)
  return 0;

 err = -EBADF;
 if (sock_flag(sk, SOCK_DEAD) != 0)
  goto end;

 err = -ENOTCONN;
 if ((sk->sk_user_data == ((void*)0)) ||
     (!(sk->sk_state & (PPPOX_CONNECTED | PPPOX_BOUND))))
  goto end;


 err = -EBADF;
 session = pppol2tp_sock_to_session(sk);
 if (session == ((void*)0))
  goto end;




 if ((session->tunnel_addr.s_session == 0) &&
     (session->tunnel_addr.d_session == 0)) {
  err = -EBADF;
  tunnel = pppol2tp_sock_to_tunnel(session->tunnel_sock);
  if (tunnel == ((void*)0))
   goto end_put_sess;

  err = pppol2tp_tunnel_ioctl(tunnel, cmd, arg);
  sock_put(session->tunnel_sock);
  goto end_put_sess;
 }

 err = pppol2tp_session_ioctl(session, cmd, arg);

end_put_sess:
 sock_put(sk);
end:
 return err;
}
