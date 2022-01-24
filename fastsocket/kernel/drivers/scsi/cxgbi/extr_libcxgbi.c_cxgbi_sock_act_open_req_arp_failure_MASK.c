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
struct sk_buff {scalar_t__ sk; } ;
struct cxgbi_sock {scalar_t__ state; int /*<<< orphan*/  lock; int /*<<< orphan*/  tid; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 scalar_t__ CTP_ACTIVE_OPEN ; 
 int CXGBI_DBG_SOCK ; 
 int /*<<< orphan*/  EHOSTUNREACH ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct cxgbi_sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct cxgbi_sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct cxgbi_sock*) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,struct cxgbi_sock*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void FUNC7(void *handle, struct sk_buff *skb)
{
	struct cxgbi_sock *csk = (struct cxgbi_sock *)skb->sk;

	FUNC4(1 << CXGBI_DBG_SOCK, "csk 0x%p,%u,0x%lx,%u.\n",
		csk, (csk)->state, (csk)->flags, (csk)->tid);
	FUNC2(csk);
	FUNC5(&csk->lock);
	if (csk->state == CTP_ACTIVE_OPEN)
		FUNC1(csk, -EHOSTUNREACH);
	FUNC6(&csk->lock);
	FUNC3(csk);
	FUNC0(skb);
}