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
struct multicall_space {int /*<<< orphan*/  mc; struct mmuext_op* args; } ;
struct mmuext_op {int /*<<< orphan*/  cmd; } ;

/* Variables and functions */
 int /*<<< orphan*/  DOMID_SELF ; 
 int /*<<< orphan*/  MMUEXT_TLB_FLUSH_LOCAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct mmuext_op*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PARAVIRT_LAZY_MMU ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 struct multicall_space FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(void)
{
	struct mmuext_op *op;
	struct multicall_space mcs;

	FUNC1();

	mcs = FUNC3(sizeof(*op));

	op = mcs.args;
	op->cmd = MMUEXT_TLB_FLUSH_LOCAL;
	FUNC0(mcs.mc, op, 1, NULL, DOMID_SELF);

	FUNC4(PARAVIRT_LAZY_MMU);

	FUNC2();
}