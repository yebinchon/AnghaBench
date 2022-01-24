#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct socket {struct sock* sk; } ;
struct sock {int sk_state; int /*<<< orphan*/ * sk_user_data; } ;
struct pppol2tp_tunnel {int dummy; } ;
struct TYPE_2__ {scalar_t__ s_session; scalar_t__ d_session; } ;
struct pppol2tp_session {struct sock* tunnel_sock; TYPE_1__ tunnel_addr; } ;

/* Variables and functions */
 int EBADF ; 
 int ENOTCONN ; 
 int PPPOX_BOUND ; 
 int PPPOX_CONNECTED ; 
 int /*<<< orphan*/  SOCK_DEAD ; 
 int FUNC0 (struct pppol2tp_session*,unsigned int,unsigned long) ; 
 struct pppol2tp_session* FUNC1 (struct sock*) ; 
 struct pppol2tp_tunnel* FUNC2 (struct sock*) ; 
 int FUNC3 (struct pppol2tp_tunnel*,unsigned int,unsigned long) ; 
 scalar_t__ FUNC4 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*) ; 

__attribute__((used)) static int FUNC6(struct socket *sock, unsigned int cmd,
			  unsigned long arg)
{
	struct sock *sk = sock->sk;
	struct pppol2tp_session *session;
	struct pppol2tp_tunnel *tunnel;
	int err;

	if (!sk)
		return 0;

	err = -EBADF;
	if (FUNC4(sk, SOCK_DEAD) != 0)
		goto end;

	err = -ENOTCONN;
	if ((sk->sk_user_data == NULL) ||
	    (!(sk->sk_state & (PPPOX_CONNECTED | PPPOX_BOUND))))
		goto end;

	/* Get session context from the socket */
	err = -EBADF;
	session = FUNC1(sk);
	if (session == NULL)
		goto end;

	/* Special case: if session's session_id is zero, treat ioctl as a
	 * tunnel ioctl
	 */
	if ((session->tunnel_addr.s_session == 0) &&
	    (session->tunnel_addr.d_session == 0)) {
		err = -EBADF;
		tunnel = FUNC2(session->tunnel_sock);
		if (tunnel == NULL)
			goto end_put_sess;

		err = FUNC3(tunnel, cmd, arg);
		FUNC5(session->tunnel_sock);
		goto end_put_sess;
	}

	err = FUNC0(session, cmd, arg);

end_put_sess:
	FUNC5(sk);
end:
	return err;
}