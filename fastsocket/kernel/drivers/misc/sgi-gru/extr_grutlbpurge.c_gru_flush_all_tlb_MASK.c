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
struct gru_tlb_global_handle {int dummy; } ;
struct gru_state {int /*<<< orphan*/  gs_gid; } ;

/* Variables and functions */
 scalar_t__ GRUMAXINVAL ; 
 struct gru_tlb_global_handle* FUNC0 (struct gru_state*) ; 
 int /*<<< orphan*/  FUNC1 (struct gru_tlb_global_handle*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  grudev ; 
 int /*<<< orphan*/  FUNC3 (struct gru_tlb_global_handle*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,scalar_t__,int) ; 

void FUNC4(struct gru_state *gru)
{
	struct gru_tlb_global_handle *tgh;

	FUNC2(grudev, "gid %d\n", gru->gs_gid);
	tgh = FUNC0(gru);
	FUNC3(tgh, 0, ~0, 0, 1, 1, GRUMAXINVAL - 1, 0xffff);
	FUNC1(tgh);
}