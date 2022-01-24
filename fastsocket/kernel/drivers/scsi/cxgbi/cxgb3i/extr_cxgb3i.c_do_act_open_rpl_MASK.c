#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct t3cdev {int dummy; } ;
struct sk_buff {int dummy; } ;
struct TYPE_10__ {scalar_t__ function; } ;
struct TYPE_8__ {int /*<<< orphan*/  s_addr; } ;
struct TYPE_9__ {int /*<<< orphan*/  sin_port; TYPE_3__ sin_addr; } ;
struct TYPE_6__ {int /*<<< orphan*/  s_addr; } ;
struct TYPE_7__ {int /*<<< orphan*/  sin_port; TYPE_1__ sin_addr; } ;
struct cxgbi_sock {int /*<<< orphan*/  lock; TYPE_5__ retry_timer; TYPE_4__ daddr; TYPE_2__ saddr; int /*<<< orphan*/  atid; int /*<<< orphan*/  flags; int /*<<< orphan*/  state; } ;
struct cpl_act_open_rpl {scalar_t__ status; } ;

/* Variables and functions */
 scalar_t__ CPL_ERR_ARP_MISS ; 
 scalar_t__ CPL_ERR_CONN_EXIST ; 
 scalar_t__ CPL_ERR_TCAM_FULL ; 
 int /*<<< orphan*/  FUNC0 (struct cpl_act_open_rpl*) ; 
 int HZ ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 scalar_t__ act_open_retry_timer ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 struct cpl_act_open_rpl* FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct t3cdev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct cxgbi_sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct cxgbi_sock*) ; 
 int /*<<< orphan*/  FUNC7 (struct cxgbi_sock*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC8 (TYPE_5__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,struct cxgbi_sock*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC13(struct t3cdev *tdev, struct sk_buff *skb, void *ctx)
{
	struct cxgbi_sock *csk = ctx;
	struct cpl_act_open_rpl *rpl = FUNC3(skb);

	FUNC10("csk 0x%p,%u,0x%lx,%u, status %u, %pI4:%u-%pI4:%u.\n",
		csk, csk->state, csk->flags, csk->atid, rpl->status,
		&csk->saddr.sin_addr.s_addr, FUNC9(csk->saddr.sin_port),
		&csk->daddr.sin_addr.s_addr, FUNC9(csk->daddr.sin_port));

	if (rpl->status != CPL_ERR_TCAM_FULL &&
	    rpl->status != CPL_ERR_CONN_EXIST &&
	    rpl->status != CPL_ERR_ARP_MISS)
		FUNC4(tdev, FUNC0(rpl));

	FUNC6(csk);
	FUNC11(&csk->lock);
	if (rpl->status == CPL_ERR_CONN_EXIST &&
	    csk->retry_timer.function != act_open_retry_timer) {
		csk->retry_timer.function = act_open_retry_timer;
		FUNC8(&csk->retry_timer, jiffies + HZ / 2);
	} else
		FUNC5(csk,
				FUNC2(rpl->status));

	FUNC12(&csk->lock);
	FUNC7(csk);
	FUNC1(skb);
	return 0;
}