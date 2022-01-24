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
struct cxgbi_sock {scalar_t__ wr_cred; scalar_t__ wr_max_cred; int /*<<< orphan*/ * cdev; int /*<<< orphan*/ * dst; int /*<<< orphan*/  tid; int /*<<< orphan*/  flags; int /*<<< orphan*/  state; } ;
struct cxgb4_lld_info {int /*<<< orphan*/  tids; } ;

/* Variables and functions */
 int /*<<< orphan*/  CTPF_HAS_ATID ; 
 int /*<<< orphan*/  CTPF_HAS_TID ; 
 int CXGBI_DBG_SOCK ; 
 int CXGBI_DBG_TOE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct cxgb4_lld_info* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct cxgbi_sock*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct cxgbi_sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct cxgbi_sock*) ; 
 int /*<<< orphan*/  FUNC5 (struct cxgbi_sock*) ; 
 int /*<<< orphan*/  FUNC6 (struct cxgbi_sock*) ; 
 int /*<<< orphan*/  FUNC7 (struct cxgbi_sock*) ; 
 int /*<<< orphan*/  FUNC8 (struct cxgbi_sock*) ; 
 int /*<<< orphan*/  FUNC9 (struct cxgbi_sock*) ; 
 int /*<<< orphan*/  FUNC10 (int,char*,struct cxgbi_sock*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC11(struct cxgbi_sock *csk)
{
	struct cxgb4_lld_info *lldi;

	FUNC10(1 << CXGBI_DBG_TOE | 1 << CXGBI_DBG_SOCK,
		"csk 0x%p,%u,0x%lx,%u.\n",
		csk, csk->state, csk->flags, csk->tid);

	FUNC4(csk);
	if (csk->wr_cred != csk->wr_max_cred) {
		FUNC5(csk);
		FUNC7(csk);
	}

	FUNC9(csk);
	if (FUNC3(csk, CTPF_HAS_ATID))
		FUNC8(csk);
	else if (FUNC3(csk, CTPF_HAS_TID)) {
		lldi = FUNC1(csk->cdev);
		FUNC0(lldi->tids, 0, csk->tid);
		FUNC2(csk, CTPF_HAS_TID);
		FUNC6(csk);
	}
	csk->dst = NULL;
	csk->cdev = NULL;
}