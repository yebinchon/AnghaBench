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
struct sock {int sk_state; int /*<<< orphan*/  sk_receive_queue; } ;
struct TYPE_2__ {int /*<<< orphan*/  remote; int /*<<< orphan*/  sid; } ;
struct pppox_sock {int /*<<< orphan*/  pppoe_ifindex; TYPE_1__ pppoe_pa; int /*<<< orphan*/ * pppoe_dev; } ;
struct pppoe_net {int dummy; } ;
struct net {int dummy; } ;

/* Variables and functions */
 int EBADF ; 
 int PPPOX_BOUND ; 
 int PPPOX_CONNECTED ; 
 int PPPOX_DEAD ; 
 int /*<<< orphan*/  SOCK_DEAD ; 
 int /*<<< orphan*/  FUNC0 (struct pppoe_net*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 
 struct pppoe_net* FUNC3 (struct net*) ; 
 struct pppox_sock* FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (struct sock*,int /*<<< orphan*/ ) ; 
 struct net* FUNC9 (struct sock*) ; 
 int /*<<< orphan*/  FUNC10 (struct sock*) ; 
 int /*<<< orphan*/  FUNC11 (struct sock*) ; 

__attribute__((used)) static int FUNC12(struct socket *sock)
{
	struct sock *sk = sock->sk;
	struct pppox_sock *po;
	struct pppoe_net *pn;
	struct net *net = NULL;

	if (!sk)
		return 0;

	FUNC2(sk);
	if (FUNC8(sk, SOCK_DEAD)) {
		FUNC6(sk);
		return -EBADF;
	}

	po = FUNC4(sk);

	if (sk->sk_state & (PPPOX_CONNECTED | PPPOX_BOUND)) {
		FUNC1(po->pppoe_dev);
		po->pppoe_dev = NULL;
	}

	FUNC5(sk);

	/* Signal the death of the socket. */
	sk->sk_state = PPPOX_DEAD;

	net = FUNC9(sk);
	pn = FUNC3(net);

	/*
	 * protect "po" from concurrent updates
	 * on pppoe_flush_dev
	 */
	FUNC0(pn, po->pppoe_pa.sid, po->pppoe_pa.remote,
		    po->pppoe_ifindex);

	FUNC10(sk);
	sock->sk = NULL;

	FUNC7(&sk->sk_receive_queue);
	FUNC6(sk);
	FUNC11(sk);

	return 0;
}