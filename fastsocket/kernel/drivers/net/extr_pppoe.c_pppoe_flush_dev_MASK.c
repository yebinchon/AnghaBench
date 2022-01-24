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
struct sock {int sk_state; int /*<<< orphan*/  (* sk_state_change ) (struct sock*) ;} ;
struct pppox_sock {struct net_device* pppoe_dev; struct pppox_sock* next; } ;
struct pppoe_net {int /*<<< orphan*/  hash_lock; struct pppox_sock** hash_table; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int PPPOE_HASH_SIZE ; 
 int PPPOX_BOUND ; 
 int PPPOX_CONNECTED ; 
 int PPPOX_ZOMBIE ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 
 struct pppoe_net* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*) ; 
 struct sock* FUNC7 (struct pppox_sock*) ; 
 int /*<<< orphan*/  FUNC8 (struct sock*) ; 
 int /*<<< orphan*/  FUNC9 (struct sock*) ; 
 int /*<<< orphan*/  FUNC10 (struct sock*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC13(struct net_device *dev)
{
	struct pppoe_net *pn;
	int i;

	FUNC0(dev == NULL);

	pn = FUNC4(FUNC1(dev));
	if (!pn) /* already freed */
		return;

	FUNC11(&pn->hash_lock);
	for (i = 0; i < PPPOE_HASH_SIZE; i++) {
		struct pppox_sock *po = pn->hash_table[i];
		struct sock *sk;

		while (po) {
			while (po && po->pppoe_dev != dev) {
				po = po->next;
			}

			if (!po)
				break;

			sk = FUNC7(po);

			/* We always grab the socket lock, followed by the
			 * hash_lock, in that order.  Since we should hold the
			 * sock lock while doing any unbinding, we need to
			 * release the lock we're holding.  Hold a reference to
			 * the sock so it doesn't disappear as we're jumping
			 * between locks.
			 */

			FUNC8(sk);
			FUNC12(&pn->hash_lock);
			FUNC3(sk);

			if (po->pppoe_dev == dev
			    && sk->sk_state & (PPPOX_CONNECTED | PPPOX_BOUND)) {
				FUNC5(sk);
				sk->sk_state = PPPOX_ZOMBIE;
				sk->sk_state_change(sk);
				po->pppoe_dev = NULL;
				FUNC2(dev);
			}

			FUNC6(sk);
			FUNC9(sk);

			/* Restart the process from the start of the current
			 * hash chain. We dropped locks so the world may have
			 * change from underneath us.
			 */

			FUNC0(FUNC4(FUNC1(dev)) == NULL);
			FUNC11(&pn->hash_lock);
			po = pn->hash_table[i];
		}
	}
	FUNC12(&pn->hash_lock);
}