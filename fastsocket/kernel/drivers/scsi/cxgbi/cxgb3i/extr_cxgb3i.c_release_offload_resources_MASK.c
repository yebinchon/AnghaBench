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
struct t3cdev {int dummy; } ;
struct cxgbi_sock {scalar_t__ wr_cred; scalar_t__ wr_max_cred; TYPE_1__* cdev; int /*<<< orphan*/ * dst; int /*<<< orphan*/  tid; scalar_t__ rss_qid; int /*<<< orphan*/  flags; int /*<<< orphan*/  state; } ;
struct TYPE_2__ {scalar_t__ lldev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CTPF_HAS_ATID ; 
 int /*<<< orphan*/  CTPF_HAS_TID ; 
 int CXGBI_DBG_SOCK ; 
 int CXGBI_DBG_TOE ; 
 int /*<<< orphan*/  FUNC0 (struct t3cdev*,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct cxgbi_sock*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct cxgbi_sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct cxgbi_sock*) ; 
 int /*<<< orphan*/  FUNC4 (struct cxgbi_sock*) ; 
 int /*<<< orphan*/  FUNC5 (struct cxgbi_sock*) ; 
 int /*<<< orphan*/  FUNC6 (struct cxgbi_sock*) ; 
 int /*<<< orphan*/  FUNC7 (struct cxgbi_sock*) ; 
 int /*<<< orphan*/  FUNC8 (struct cxgbi_sock*) ; 
 int /*<<< orphan*/  FUNC9 (int,char*,struct cxgbi_sock*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(struct cxgbi_sock *csk)
{
	struct t3cdev *t3dev = (struct t3cdev *)csk->cdev->lldev;

	FUNC9(1 << CXGBI_DBG_TOE | 1 << CXGBI_DBG_SOCK,
		"csk 0x%p,%u,0x%lx,%u.\n",
		csk, csk->state, csk->flags, csk->tid);

	csk->rss_qid = 0;
	FUNC3(csk);

	if (csk->wr_cred != csk->wr_max_cred) {
		FUNC4(csk);
		FUNC6(csk);
	}
	FUNC8(csk);
	if (FUNC2(csk, CTPF_HAS_ATID))
		FUNC7(csk);
	else if (FUNC2(csk, CTPF_HAS_TID)) {
		FUNC0(t3dev, (void *)csk, csk->tid);
		FUNC1(csk, CTPF_HAS_TID);
		FUNC5(csk);
	}
	csk->dst = NULL;
	csk->cdev = NULL;
}