#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct sock {int sk_state; } ;
struct sk_buff {int dummy; } ;
struct pppox_sock {int /*<<< orphan*/  pppoe_relay; int /*<<< orphan*/  chan; } ;
struct TYPE_4__ {int sk_state; } ;

/* Variables and functions */
 int NET_RX_DROP ; 
 int NET_RX_SUCCESS ; 
 int PPPOX_BOUND ; 
 int PPPOX_CONNECTED ; 
 int PPPOX_RELAY ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,struct sk_buff*) ; 
 struct pppox_sock* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 struct pppox_sock* FUNC4 (struct sock*) ; 
 TYPE_1__* FUNC5 (struct pppox_sock*) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 scalar_t__ FUNC8 (struct sock*,struct sk_buff*) ; 

__attribute__((used)) static int FUNC9(struct sock *sk, struct sk_buff *skb)
{
	struct pppox_sock *po = FUNC4(sk);
	struct pppox_sock *relay_po;

	/* Backlog receive. Semantics of backlog rcv preclude any code from
	 * executing in lock_sock()/release_sock() bounds; meaning sk->sk_state
	 * can't change.
	 */

	if (sk->sk_state & PPPOX_BOUND) {
		FUNC3(&po->chan, skb);
	} else if (sk->sk_state & PPPOX_RELAY) {
		relay_po = FUNC1(FUNC6(sk),
					    &po->pppoe_relay);
		if (relay_po == NULL)
			goto abort_kfree;

		if ((FUNC5(relay_po)->sk_state & PPPOX_CONNECTED) == 0)
			goto abort_put;

		if (!FUNC0(FUNC5(relay_po), skb))
			goto abort_put;
	} else {
		if (FUNC8(sk, skb))
			goto abort_kfree;
	}

	return NET_RX_SUCCESS;

abort_put:
	FUNC7(FUNC5(relay_po));

abort_kfree:
	FUNC2(skb);
	return NET_RX_DROP;
}