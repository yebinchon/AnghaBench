#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct multicall_space {int /*<<< orphan*/  mc; struct mmuext_op* args; } ;
struct TYPE_4__ {unsigned int nr_ents; } ;
struct TYPE_3__ {unsigned long linear_addr; } ;
struct mmuext_op {TYPE_2__ arg2; TYPE_1__ arg1; int /*<<< orphan*/  cmd; } ;

/* Variables and functions */
 int /*<<< orphan*/  DOMID_SELF ; 
 int /*<<< orphan*/  MMUEXT_SET_LDT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct mmuext_op*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PARAVIRT_LAZY_CPU ; 
 struct multicall_space FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(const void *addr, unsigned entries)
{
	struct mmuext_op *op;
	struct multicall_space mcs = FUNC1(sizeof(*op));

	op = mcs.args;
	op->cmd = MMUEXT_SET_LDT;
	op->arg1.linear_addr = (unsigned long)addr;
	op->arg2.nr_ents = entries;

	FUNC0(mcs.mc, op, 1, NULL, DOMID_SELF);

	FUNC2(PARAVIRT_LAZY_CPU);
}