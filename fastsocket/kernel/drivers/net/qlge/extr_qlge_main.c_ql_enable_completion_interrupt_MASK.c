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
typedef  int u32 ;
struct ql_adapter {int /*<<< orphan*/  hw_lock; int /*<<< orphan*/  flags; struct intr_context* intr_context; } ;
struct intr_context {int /*<<< orphan*/  intr_en_mask; int /*<<< orphan*/  irq_cnt; } ;

/* Variables and functions */
 int /*<<< orphan*/  INTR_EN ; 
 int /*<<< orphan*/  QL_MSIX_ENABLED ; 
 int /*<<< orphan*/  STS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 (struct ql_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ql_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

u32 FUNC7(struct ql_adapter *qdev, u32 intr)
{
	u32 var = 0;
	unsigned long hw_flags = 0;
	struct intr_context *ctx = qdev->intr_context + intr;

	if (FUNC1(FUNC6(QL_MSIX_ENABLED, &qdev->flags) && intr)) {
		/* Always enable if we're MSIX multi interrupts and
		 * it's not the default (zeroeth) interrupt.
		 */
		FUNC3(qdev, INTR_EN,
			   ctx->intr_en_mask);
		var = FUNC2(qdev, STS);
		return var;
	}

	FUNC4(&qdev->hw_lock, hw_flags);
	if (FUNC0(&ctx->irq_cnt)) {
		FUNC3(qdev, INTR_EN,
			   ctx->intr_en_mask);
		var = FUNC2(qdev, STS);
	}
	FUNC5(&qdev->hw_lock, hw_flags);
	return var;
}