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
struct cxgbi_sock {int /*<<< orphan*/  atid; int /*<<< orphan*/  cdev; } ;
struct cxgb4_lld_info {int /*<<< orphan*/  tids; } ;

/* Variables and functions */
 int /*<<< orphan*/  CTPF_HAS_ATID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct cxgb4_lld_info* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct cxgbi_sock*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct cxgbi_sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct cxgbi_sock*) ; 

__attribute__((used)) static inline void FUNC5(struct cxgbi_sock *csk)
{
	struct cxgb4_lld_info *lldi = FUNC1(csk->cdev);

	if (FUNC3(csk, CTPF_HAS_ATID)) {
		FUNC0(lldi->tids, csk->atid);
		FUNC2(csk, CTPF_HAS_ATID);
		FUNC4(csk);
	}
}