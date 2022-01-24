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
typedef  int /*<<< orphan*/  u32 ;
struct tid_info {int dummy; } ;
struct sk_buff {scalar_t__ data; } ;
struct TYPE_2__ {int /*<<< orphan*/ * function; } ;
struct cxgbi_sock {unsigned int atid; scalar_t__ state; unsigned int tid; int advmss; int /*<<< orphan*/  lock; int /*<<< orphan*/  write_queue; int /*<<< orphan*/  rcv_wup; int /*<<< orphan*/  rcv_nxt; int /*<<< orphan*/  copied_seq; TYPE_1__ retry_timer; int /*<<< orphan*/  flags; } ;
struct cxgbi_device {int dummy; } ;
struct cxgb4_lld_info {int* mtus; struct tid_info* tids; } ;
struct cpl_act_establish {int /*<<< orphan*/  tcp_opt; int /*<<< orphan*/  snd_isn; int /*<<< orphan*/  rcv_isn; int /*<<< orphan*/  tos_atid; } ;

/* Variables and functions */
 int /*<<< orphan*/  CTPF_ACTIVE_CLOSE_NEEDED ; 
 int /*<<< orphan*/  CTPF_HAS_TID ; 
 scalar_t__ CTP_ACTIVE_OPEN ; 
 int CXGBI_DBG_SOCK ; 
 int CXGBI_DBG_TOE ; 
 size_t FUNC0 (unsigned short) ; 
 scalar_t__ FUNC1 (unsigned short) ; 
 unsigned int FUNC2 (struct cpl_act_establish*) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ ) ; 
 int RCV_BUFSIZ_MASK ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct tid_info*,struct cxgbi_sock*,unsigned int) ; 
 int cxgb4i_rcv_win ; 
 struct cxgb4_lld_info* FUNC7 (struct cxgbi_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct cxgbi_sock*) ; 
 int /*<<< orphan*/  FUNC9 (struct cxgbi_sock*,int /*<<< orphan*/ ,unsigned short) ; 
 int FUNC10 (struct cxgbi_sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct cxgbi_sock*) ; 
 int /*<<< orphan*/  FUNC12 (struct cxgbi_sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC14 (struct cxgbi_sock*) ; 
 int /*<<< orphan*/  FUNC15 (int,char*,struct cxgbi_sock*,size_t,int,...) ; 
 struct cxgbi_sock* FUNC16 (struct tid_info*,unsigned int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 unsigned short FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (char*,unsigned int,struct cxgbi_sock*,...) ; 
 int /*<<< orphan*/  FUNC20 (char*,struct cxgbi_sock*,scalar_t__,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC21 (struct cxgbi_sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (struct cxgbi_sock*) ; 
 scalar_t__ FUNC23 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC26 (int) ; 

__attribute__((used)) static void FUNC27(struct cxgbi_device *cdev, struct sk_buff *skb)
{
	struct cxgbi_sock *csk;
	struct cpl_act_establish *req = (struct cpl_act_establish *)skb->data;
	unsigned short tcp_opt = FUNC18(req->tcp_opt);
	unsigned int tid = FUNC2(req);
	unsigned int atid = FUNC3(FUNC17(req->tos_atid));
	struct cxgb4_lld_info *lldi = FUNC7(cdev);
	struct tid_info *t = lldi->tids;
	u32 rcv_isn = FUNC5(req->rcv_isn);

	csk = FUNC16(t, atid);
	if (FUNC26(!csk)) {
		FUNC19("NO conn. for atid %u, cdev 0x%p.\n", atid, cdev);
		goto rel_skb;
	}

	if (csk->atid != atid) {
		FUNC19("bad conn atid %u, csk 0x%p,%u,0x%lx,tid %u, atid %u.\n",
			atid, csk, csk->state, csk->flags, csk->tid, csk->atid);
		goto rel_skb;
	}

	FUNC15(1 << CXGBI_DBG_TOE | 1 << CXGBI_DBG_SOCK,
		"csk 0x%p,%u,0x%lx, tid %u, atid %u, rseq %u.\n",
		csk, csk->state, csk->flags, tid, atid, rcv_isn);

	FUNC11(csk);
	csk->tid = tid;
	FUNC6(lldi->tids, csk, tid);
	FUNC12(csk, CTPF_HAS_TID);

	FUNC14(csk);

	FUNC24(&csk->lock);
	if (FUNC26(csk->state != CTP_ACTIVE_OPEN))
		FUNC20("csk 0x%p,%u,0x%lx,%u, got EST.\n",
			csk, csk->state, csk->flags, csk->tid);

	if (csk->retry_timer.function) {
		FUNC13(&csk->retry_timer);
		csk->retry_timer.function = NULL;
	}

	csk->copied_seq = csk->rcv_wup = csk->rcv_nxt = rcv_isn;
	/*
	 * Causes the first RX_DATA_ACK to supply any Rx credits we couldn't
	 * pass through opt0.
	 */
	if (cxgb4i_rcv_win > (RCV_BUFSIZ_MASK << 10))
		csk->rcv_wup -= cxgb4i_rcv_win - (RCV_BUFSIZ_MASK << 10);

	csk->advmss = lldi->mtus[FUNC0(tcp_opt)] - 40;
	if (FUNC1(tcp_opt))
		csk->advmss -= 12;
	if (csk->advmss < 128)
		csk->advmss = 128;

	FUNC15(1 << CXGBI_DBG_TOE | 1 << CXGBI_DBG_SOCK,
		"csk 0x%p, mss_idx %u, advmss %u.\n",
			csk, FUNC0(tcp_opt), csk->advmss);

	FUNC9(csk, FUNC17(req->snd_isn), FUNC18(req->tcp_opt));

	if (FUNC26(FUNC10(csk, CTPF_ACTIVE_CLOSE_NEEDED)))
		FUNC22(csk);
	else {
		if (FUNC23(&csk->write_queue))
			FUNC21(csk, 0);
		FUNC8(csk);
	}
	FUNC25(&csk->lock);

rel_skb:
	FUNC4(skb);
}