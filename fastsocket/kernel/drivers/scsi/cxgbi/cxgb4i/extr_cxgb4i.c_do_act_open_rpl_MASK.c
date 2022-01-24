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
struct tid_info {int dummy; } ;
struct sk_buff {scalar_t__ data; } ;
struct TYPE_10__ {scalar_t__ function; } ;
struct TYPE_8__ {int /*<<< orphan*/  s_addr; } ;
struct TYPE_9__ {int /*<<< orphan*/  sin_port; TYPE_3__ sin_addr; } ;
struct TYPE_6__ {int /*<<< orphan*/  s_addr; } ;
struct TYPE_7__ {int /*<<< orphan*/  sin_port; TYPE_1__ sin_addr; } ;
struct cxgbi_sock {int /*<<< orphan*/  lock; TYPE_5__ retry_timer; int /*<<< orphan*/  port_id; int /*<<< orphan*/  flags; int /*<<< orphan*/  state; TYPE_4__ daddr; TYPE_2__ saddr; } ;
struct cxgbi_device {int dummy; } ;
struct cxgb4_lld_info {struct tid_info* tids; } ;
struct cpl_act_open_rpl {int /*<<< orphan*/  atid_status; } ;

/* Variables and functions */
 unsigned int CPL_ERR_ARP_MISS ; 
 unsigned int CPL_ERR_CONN_EXIST ; 
 unsigned int CPL_ERR_RTX_NEG_ADVICE ; 
 unsigned int CPL_ERR_TCAM_FULL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (struct cpl_act_open_rpl*) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ ) ; 
 int HZ ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ csk_act_open_retry_timer ; 
 int /*<<< orphan*/  FUNC7 (struct tid_info*,int /*<<< orphan*/ ,unsigned int) ; 
 struct cxgb4_lld_info* FUNC8 (struct cxgbi_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct cxgbi_sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct cxgbi_sock*) ; 
 int /*<<< orphan*/  FUNC11 (struct cxgbi_sock*) ; 
 scalar_t__ jiffies ; 
 struct cxgbi_sock* FUNC12 (struct tid_info*,unsigned int) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_5__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (char*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC16 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int,unsigned int,unsigned int,struct cxgbi_sock*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC19 (int) ; 

__attribute__((used)) static void FUNC20(struct cxgbi_device *cdev, struct sk_buff *skb)
{
	struct cxgbi_sock *csk;
	struct cpl_act_open_rpl *rpl = (struct cpl_act_open_rpl *)skb->data;
	unsigned int tid = FUNC2(rpl);
	unsigned int atid =
		FUNC3(FUNC0(FUNC6(rpl->atid_status)));
	unsigned int status = FUNC1(FUNC6(rpl->atid_status));
	struct cxgb4_lld_info *lldi = FUNC8(cdev);
	struct tid_info *t = lldi->tids;

	csk = FUNC12(t, atid);
	if (FUNC19(!csk)) {
		FUNC15("NO matching conn. atid %u, tid %u.\n", atid, tid);
		goto rel_skb;
	}

	FUNC16("%pI4:%u-%pI4:%u, atid %u,%u, status %u, csk 0x%p,%u,0x%lx.\n",
		&csk->saddr.sin_addr.s_addr, FUNC14(csk->saddr.sin_port),
		&csk->daddr.sin_addr.s_addr, FUNC14(csk->daddr.sin_port),
		atid, tid, status, csk, csk->state, csk->flags);

	if (status == CPL_ERR_RTX_NEG_ADVICE)
		goto rel_skb;

	if (status && status != CPL_ERR_TCAM_FULL &&
	    status != CPL_ERR_CONN_EXIST &&
	    status != CPL_ERR_ARP_MISS)
		FUNC7(lldi->tids, csk->port_id, FUNC2(rpl));

	FUNC10(csk);
	FUNC17(&csk->lock);

	if (status == CPL_ERR_CONN_EXIST &&
	    csk->retry_timer.function != csk_act_open_retry_timer) {
		csk->retry_timer.function = csk_act_open_retry_timer;
		FUNC13(&csk->retry_timer, jiffies + HZ / 2);
	} else
		FUNC9(csk,
					FUNC5(status));

	FUNC18(&csk->lock);
	FUNC11(csk);
rel_skb:
	FUNC4(skb);
}