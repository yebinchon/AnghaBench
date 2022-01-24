#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct socket {struct sock* sk; } ;
struct sock {int /*<<< orphan*/  sk_write_queue; int /*<<< orphan*/  sk_receive_queue; int /*<<< orphan*/  sk_state; } ;
struct sk_buff {int dummy; } ;
struct pppol2tp_session {int /*<<< orphan*/  reorder_q; } ;

/* Variables and functions */
 int EBADF ; 
 int /*<<< orphan*/  PPPOX_DEAD ; 
 int /*<<< orphan*/  SOCK_DEAD ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 struct pppol2tp_session* FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*) ; 
 struct sk_buff* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct sock*) ; 
 int /*<<< orphan*/  FUNC9 (struct sock*) ; 

__attribute__((used)) static int FUNC10(struct socket *sock)
{
	struct sock *sk = sock->sk;
	struct pppol2tp_session *session;
	int error;

	if (!sk)
		return 0;

	error = -EBADF;
	FUNC1(sk);
	if (FUNC7(sk, SOCK_DEAD) != 0)
		goto error;

	FUNC3(sk);

	/* Signal the death of the socket. */
	sk->sk_state = PPPOX_DEAD;
	FUNC8(sk);
	sock->sk = NULL;

	session = FUNC2(sk);

	/* Purge any queued data */
	FUNC6(&sk->sk_receive_queue);
	FUNC6(&sk->sk_write_queue);
	if (session != NULL) {
		struct sk_buff *skb;
		while ((skb = FUNC5(&session->reorder_q))) {
			FUNC0(skb);
			FUNC9(sk);
		}
		FUNC9(sk);
	}

	FUNC4(sk);

	/* This will delete the session context via
	 * pppol2tp_session_destruct() if the socket's refcnt drops to
	 * zero.
	 */
	FUNC9(sk);

	return 0;

error:
	FUNC4(sk);
	return error;
}