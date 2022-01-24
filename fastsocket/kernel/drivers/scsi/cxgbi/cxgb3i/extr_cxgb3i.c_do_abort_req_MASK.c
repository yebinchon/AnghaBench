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
struct t3cdev {int dummy; } ;
struct sk_buff {int dummy; } ;
struct cxgbi_sock {int /*<<< orphan*/  lock; int /*<<< orphan*/  err; int /*<<< orphan*/  tid; int /*<<< orphan*/  flags; int /*<<< orphan*/  state; } ;
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
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct cxgbi_sock*,scalar_t__,int*) ; 
 struct cpl_abort_req_rss* FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct cxgbi_sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct cxgbi_sock*) ; 
 int /*<<< orphan*/  FUNC5 (struct cxgbi_sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct cxgbi_sock*) ; 
 int /*<<< orphan*/  FUNC7 (struct cxgbi_sock*) ; 
 int /*<<< orphan*/  FUNC8 (struct cxgbi_sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct cxgbi_sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int,char*,struct cxgbi_sock*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct cxgbi_sock*,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC14(struct t3cdev *cdev, struct sk_buff *skb, void *ctx)
{
	const struct cpl_abort_req_rss *req = FUNC2(skb);
	struct cxgbi_sock *csk = ctx;
	int rst_status = CPL_ABORT_NO_RST;

	FUNC10(1 << CXGBI_DBG_TOE | 1 << CXGBI_DBG_SOCK,
		"csk 0x%p,%u,0x%lx,%u.\n",
		csk, csk->state, csk->flags, csk->tid);

	if (req->status == CPL_ERR_RTX_NEG_ADVICE ||
	    req->status == CPL_ERR_PERSIST_NEG_ADVICE) {
		goto done;
	}

	FUNC6(csk);
	FUNC12(&csk->lock);

	if (!FUNC5(csk, CTPF_ABORT_REQ_RCVD)) {
		FUNC8(csk, CTPF_ABORT_REQ_RCVD);
		FUNC9(csk, CTP_ABORTING);
		goto out;
	}

	FUNC3(csk, CTPF_ABORT_REQ_RCVD);
	FUNC11(csk, rst_status);

	if (!FUNC5(csk, CTPF_ABORT_RPL_PENDING)) {
		csk->err = FUNC1(csk, req->status, &rst_status);
		FUNC4(csk);
	}

out:
	FUNC13(&csk->lock);
	FUNC7(csk);
done:
	FUNC0(skb);
	return 0;
}