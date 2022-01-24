#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct t3cdev {int dummy; } ;
struct sk_buff {int /*<<< orphan*/  csum; } ;
struct TYPE_4__ {int /*<<< orphan*/ * function; } ;
struct cxgbi_sock {scalar_t__ state; unsigned int tid; int /*<<< orphan*/  lock; int /*<<< orphan*/  write_queue; int /*<<< orphan*/  rcv_wup; int /*<<< orphan*/  rcv_nxt; int /*<<< orphan*/  copied_seq; int /*<<< orphan*/  flags; TYPE_2__ retry_timer; int /*<<< orphan*/  rss_qid; TYPE_1__* cdev; } ;
struct cpl_act_establish {int /*<<< orphan*/  tcp_opt; int /*<<< orphan*/  snd_isn; int /*<<< orphan*/  rcv_isn; int /*<<< orphan*/  tos_tid; } ;
struct TYPE_3__ {int /*<<< orphan*/  lldev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CTPF_ACTIVE_CLOSE_NEEDED ; 
 int /*<<< orphan*/  CTPF_HAS_TID ; 
 scalar_t__ CTP_ACTIVE_OPEN ; 
 int CXGBI_DBG_SOCK ; 
 int CXGBI_DBG_TOE ; 
 unsigned int FUNC0 (struct cpl_act_establish*) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int M_RCV_BUFSIZ ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 struct cpl_act_establish* FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct cxgbi_sock*,unsigned int) ; 
 int cxgb3i_rcv_win ; 
 int /*<<< orphan*/  FUNC6 (struct cxgbi_sock*) ; 
 int /*<<< orphan*/  FUNC7 (struct cxgbi_sock*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct cxgbi_sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct cxgbi_sock*) ; 
 int /*<<< orphan*/  FUNC10 (struct cxgbi_sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC12 (struct cxgbi_sock*) ; 
 int /*<<< orphan*/  FUNC13 (int,char*,unsigned int,unsigned int,struct cxgbi_sock*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (char*,struct cxgbi_sock*,scalar_t__,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC17 (struct cxgbi_sock*,int) ; 
 int /*<<< orphan*/  FUNC18 (struct cxgbi_sock*) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  t3_client ; 
 scalar_t__ FUNC22 (int) ; 

__attribute__((used)) static int FUNC23(struct t3cdev *tdev, struct sk_buff *skb, void *ctx)
{
	struct cxgbi_sock *csk = ctx;
	struct cpl_act_establish *req = FUNC4(skb);
	unsigned int tid = FUNC0(req);
	unsigned int atid = FUNC1(FUNC14(req->tos_tid));
	u32 rcv_isn = FUNC14(req->rcv_isn);	/* real RCV_ISN + 1 */

	FUNC13(1 << CXGBI_DBG_TOE | 1 << CXGBI_DBG_SOCK,
		"atid 0x%x,tid 0x%x, csk 0x%p,%u,0x%lx, isn %u.\n",
		atid, atid, csk, csk->state, csk->flags, rcv_isn);

	FUNC9(csk);
	FUNC10(csk, CTPF_HAS_TID);
	csk->tid = tid;
	FUNC5(csk->cdev->lldev, &t3_client, csk, tid);

	FUNC12(csk);

	csk->rss_qid = FUNC2(FUNC15(skb->csum));

	FUNC20(&csk->lock);
	if (csk->retry_timer.function) {
		FUNC11(&csk->retry_timer);
		csk->retry_timer.function = NULL;
	}

	if (FUNC22(csk->state != CTP_ACTIVE_OPEN))
		FUNC16("csk 0x%p,%u,0x%lx,%u, got EST.\n",
			csk, csk->state, csk->flags, csk->tid);

	csk->copied_seq = csk->rcv_wup = csk->rcv_nxt = rcv_isn;
	if (cxgb3i_rcv_win > (M_RCV_BUFSIZ << 10))
		csk->rcv_wup -= cxgb3i_rcv_win - (M_RCV_BUFSIZ << 10);

	FUNC7(csk, FUNC14(req->snd_isn), FUNC15(req->tcp_opt));

	if (FUNC22(FUNC8(csk, CTPF_ACTIVE_CLOSE_NEEDED)))
		/* upper layer has requested closing */
		FUNC18(csk);
	else {
		if (FUNC19(&csk->write_queue))
			FUNC17(csk, 1);
		FUNC6(csk);
	}

	FUNC21(&csk->lock);
	FUNC3(skb);
	return 0;
}