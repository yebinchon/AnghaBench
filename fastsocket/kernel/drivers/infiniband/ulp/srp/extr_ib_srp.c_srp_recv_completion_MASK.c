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
struct srp_target_port {int dummy; } ;
struct ib_wc {scalar_t__ status; int /*<<< orphan*/  opcode; } ;
struct ib_cq {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  IB_CQ_NEXT_COMP ; 
 scalar_t__ IB_WC_SUCCESS ; 
 scalar_t__ FUNC0 (struct ib_cq*,int,struct ib_wc*) ; 
 int /*<<< orphan*/  FUNC1 (struct ib_cq*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ,struct srp_target_port*) ; 
 int /*<<< orphan*/  FUNC4 (struct srp_target_port*,struct ib_wc*) ; 

__attribute__((used)) static void FUNC5(struct ib_cq *cq, void *target_ptr)
{
	struct srp_target_port *target = target_ptr;
	struct ib_wc wc;

	FUNC1(cq, IB_CQ_NEXT_COMP);
	while (FUNC0(cq, 1, &wc) > 0) {
		if (FUNC2(wc.status == IB_WC_SUCCESS)) {
			FUNC4(target, &wc);
		} else {
			FUNC3(wc.status, wc.opcode, target);
		}
	}
}