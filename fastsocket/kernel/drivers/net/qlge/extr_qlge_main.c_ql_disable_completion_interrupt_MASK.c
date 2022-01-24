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
struct ql_adapter {int /*<<< orphan*/  hw_lock; struct intr_context* intr_context; int /*<<< orphan*/  flags; } ;
struct intr_context {int /*<<< orphan*/  irq_cnt; int /*<<< orphan*/  intr_dis_mask; } ;

/* Variables and functions */
 int /*<<< orphan*/  INTR_EN ; 
 int /*<<< orphan*/  QL_MSIX_ENABLED ; 
 int /*<<< orphan*/  STS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int) ; 
 int FUNC3 (struct ql_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ql_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static u32 FUNC8(struct ql_adapter *qdev, u32 intr)
{
	u32 var = 0;
	struct intr_context *ctx;

	/* HW disables for us if we're MSIX multi interrupts and
	 * it's not the default (zeroeth) interrupt.
	 */
	if (FUNC2(FUNC7(QL_MSIX_ENABLED, &qdev->flags) && intr))
		return 0;

	ctx = qdev->intr_context + intr;
	FUNC5(&qdev->hw_lock);
	if (!FUNC1(&ctx->irq_cnt)) {
		FUNC4(qdev, INTR_EN,
		ctx->intr_dis_mask);
		var = FUNC3(qdev, STS);
	}
	FUNC0(&ctx->irq_cnt);
	FUNC6(&qdev->hw_lock);
	return var;
}