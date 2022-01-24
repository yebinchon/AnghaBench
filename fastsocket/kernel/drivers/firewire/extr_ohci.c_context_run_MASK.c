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
typedef  int u32 ;
struct fw_ohci {int dummy; } ;
struct context {int /*<<< orphan*/  regs; TYPE_1__* last; struct fw_ohci* ohci; } ;
struct TYPE_2__ {int /*<<< orphan*/  branch_address; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int CONTEXT_RUN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct fw_ohci*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct fw_ohci*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC6(struct context *ctx, u32 extra)
{
	struct fw_ohci *ohci = ctx->ohci;

	FUNC5(ohci, FUNC0(ctx->regs),
		  FUNC4(ctx->last->branch_address));
	FUNC5(ohci, FUNC1(ctx->regs), ~0);
	FUNC5(ohci, FUNC2(ctx->regs), CONTEXT_RUN | extra);
	FUNC3(ohci);
}