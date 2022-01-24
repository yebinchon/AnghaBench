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
struct tid_info {int dummy; } ;
struct sk_buff {scalar_t__ data; } ;
struct cxgbi_sock {int /*<<< orphan*/  lock; int /*<<< orphan*/  err; int /*<<< orphan*/  tid; int /*<<< orphan*/  flags; int /*<<< orphan*/  state; } ;
struct cxgbi_device {int dummy; } ;
struct cxgb4_lld_info {struct tid_info* tids; } ;
struct cpl_abort_req_rss {scalar_t__ status; } ;

/* Variables and functions */
 int CPL_ABORT_NO_RST ; 
 scalar_t__ CPL_ERR_PERSIST_NEG_ADVICE ; 
 scalar_t__ CPL_ERR_RTX_NEG_ADVICE ; 
 int /*<<< orphan*/  CTPF_ABORT_REQ_RCVD ; 
 int /*<<< orphan*/  CTPF_ABORT_RPL_PENDING ; 
 int /*<<< orphan*/  CTP_ABORTING ; 
 int CXGBI_DBG_SOCK ; 
 int CXGBI_DBG_TOE ; 
 unsigned int FUNC0 (struct cpl_abort_req_rss*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct cxgbi_sock*,scalar_t__,int*) ; 
 struct cxgb4_lld_info* FUNC3 (struct cxgbi_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct cxgbi_sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct cxgbi_sock*) ; 
 int /*<<< orphan*/  FUNC6 (struct cxgbi_sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct cxgbi_sock*) ; 
 int /*<<< orphan*/  FUNC8 (struct cxgbi_sock*) ; 
 int /*<<< orphan*/  FUNC9 (struct cxgbi_sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct cxgbi_sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int,char*,struct cxgbi_sock*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 struct cxgbi_sock* FUNC12 (struct tid_info*,unsigned int) ; 
 int /*<<< orphan*/  FUNC13 (char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC14 (struct cxgbi_sock*,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC17 (int) ; 

__attribute__((used)) static void FUNC18(struct cxgbi_device *cdev, struct sk_buff *skb)
{
	struct cxgbi_sock *csk;
	struct cpl_abort_req_rss *req = (struct cpl_abort_req_rss *)skb->data;
	unsigned int tid = FUNC0(req);
	struct cxgb4_lld_info *lldi = FUNC3(cdev);
	struct tid_info *t = lldi->tids;
	int rst_status = CPL_ABORT_NO_RST;

	csk = FUNC12(t, tid);
	if (FUNC17(!csk)) {
		FUNC13("can't find connection for tid %u.\n", tid);
		goto rel_skb;
	}

	FUNC11(1 << CXGBI_DBG_TOE | 1 << CXGBI_DBG_SOCK,
		"csk 0x%p,%u,0x%lx, tid %u, status 0x%x.\n",
		csk, csk->state, csk->flags, csk->tid, req->status);

	if (req->status == CPL_ERR_RTX_NEG_ADVICE ||
	    req->status == CPL_ERR_PERSIST_NEG_ADVICE)
		goto rel_skb;

	FUNC7(csk);
	FUNC15(&csk->lock);

	if (!FUNC6(csk, CTPF_ABORT_REQ_RCVD)) {
		FUNC9(csk, CTPF_ABORT_REQ_RCVD);
		FUNC10(csk, CTP_ABORTING);
		goto done;
	}

	FUNC4(csk, CTPF_ABORT_REQ_RCVD);
	FUNC14(csk, rst_status);

	if (!FUNC6(csk, CTPF_ABORT_RPL_PENDING)) {
		csk->err = FUNC2(csk, req->status, &rst_status);
		FUNC5(csk);
	}
done:
	FUNC16(&csk->lock);
	FUNC8(csk);
rel_skb:
	FUNC1(skb);
}