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
struct cxgbi_sock {int /*<<< orphan*/  atid; TYPE_1__* cdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  lldev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CTPF_HAS_ATID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct cxgbi_sock*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct cxgbi_sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct cxgbi_sock*) ; 

__attribute__((used)) static inline void FUNC4(struct cxgbi_sock *csk)
{
	if (FUNC2(csk, CTPF_HAS_ATID)) {
		FUNC0(csk->cdev->lldev, csk->atid);
		FUNC1(csk, CTPF_HAS_ATID);
		FUNC3(csk);
	}
}