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
struct context {int /*<<< orphan*/  regs; int /*<<< orphan*/  ohci; } ;

/* Variables and functions */
 int CONTEXT_ACTIVE ; 
 int /*<<< orphan*/  CONTEXT_RUN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct context *ctx)
{
	u32 reg;
	int i;

	FUNC6(ctx->ohci, FUNC0(ctx->regs), CONTEXT_RUN);
	FUNC2(ctx->ohci);

	for (i = 0; i < 10; i++) {
		reg = FUNC5(ctx->ohci, FUNC1(ctx->regs));
		if ((reg & CONTEXT_ACTIVE) == 0)
			return;

		FUNC4(1);
	}
	FUNC3("Error: DMA context still active (0x%08x)\n", reg);
}