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
struct multicall_space {int /*<<< orphan*/  mc; struct mmuext_op* args; } ;
struct TYPE_2__ {int /*<<< orphan*/  mfn; } ;
struct mmuext_op {unsigned int cmd; TYPE_1__ arg1; } ;

/* Variables and functions */
 int /*<<< orphan*/  DOMID_SELF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct mmuext_op*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct multicall_space FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 

__attribute__((used)) static void FUNC3(unsigned level, unsigned long pfn)
{
	struct mmuext_op *op;
	struct multicall_space mcs;

	mcs = FUNC1(sizeof(*op));
	op = mcs.args;
	op->cmd = level;
	op->arg1.mfn = FUNC2(pfn);
	FUNC0(mcs.mc, op, 1, NULL, DOMID_SELF);
}