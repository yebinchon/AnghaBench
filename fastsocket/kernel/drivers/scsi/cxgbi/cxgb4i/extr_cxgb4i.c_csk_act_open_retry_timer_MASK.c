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
struct sock {int dummy; } ;
struct sk_buff {struct sock* sk; } ;
struct cxgbi_sock {int /*<<< orphan*/  lock; int /*<<< orphan*/  l2t; int /*<<< orphan*/  tid; int /*<<< orphan*/  flags; int /*<<< orphan*/  state; } ;
struct cpl_act_open_req {int dummy; } ;

/* Variables and functions */
 int CXGBI_DBG_SOCK ; 
 int CXGBI_DBG_TOE ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 struct sk_buff* FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cxgbi_sock_act_open_req_arp_failure ; 
 int /*<<< orphan*/  FUNC1 (struct cxgbi_sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct cxgbi_sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct cxgbi_sock*) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,struct cxgbi_sock*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct cxgbi_sock*,struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,struct cxgbi_sock*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(unsigned long data)
{
	struct sk_buff *skb;
	struct cxgbi_sock *csk = (struct cxgbi_sock *)data;

	FUNC4(1 << CXGBI_DBG_TOE | 1 << CXGBI_DBG_SOCK,
		"csk 0x%p,%u,0x%lx,%u.\n",
		csk, csk->state, csk->flags, csk->tid);

	FUNC2(csk);
	FUNC6(&csk->lock);
	skb = FUNC0(sizeof(struct cpl_act_open_req), 0, GFP_ATOMIC);
	if (!skb)
		FUNC1(csk, -ENOMEM);
	else {
		skb->sk = (struct sock *)csk;
		FUNC8(skb, csk,
					cxgbi_sock_act_open_req_arp_failure);
		FUNC5(csk, skb, csk->l2t);
	}
	FUNC7(&csk->lock);
	FUNC3(csk);
}