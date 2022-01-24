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
struct qlcnic_host_sds_ring {int /*<<< orphan*/  napi; } ;
struct qlcnic_hardware_context {scalar_t__ diag_test; int /*<<< orphan*/  diag_cnt; } ;
struct qlcnic_adapter {TYPE_1__* recv_ctx; int /*<<< orphan*/  state; struct qlcnic_hardware_context* ahw; } ;
typedef  scalar_t__ irqreturn_t ;
struct TYPE_2__ {struct qlcnic_host_sds_ring* sds_rings; } ;

/* Variables and functions */
 scalar_t__ IRQ_HANDLED ; 
 scalar_t__ IRQ_NONE ; 
 scalar_t__ QLCNIC_INTERRUPT_TEST ; 
 int /*<<< orphan*/  __QLCNIC_DEV_UP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct qlcnic_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct qlcnic_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (struct qlcnic_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

irqreturn_t FUNC5(int irq, void *data)
{
	struct qlcnic_adapter *adapter = data;
	struct qlcnic_host_sds_ring *sds_ring;
	struct qlcnic_hardware_context *ahw = adapter->ahw;

	if (FUNC1(adapter) == IRQ_NONE)
		return IRQ_NONE;

	FUNC3(adapter);

	if (ahw->diag_test == QLCNIC_INTERRUPT_TEST) {
		ahw->diag_cnt++;
		FUNC2(adapter);
		return IRQ_HANDLED;
	}

	if (!FUNC4(__QLCNIC_DEV_UP, &adapter->state)) {
		FUNC2(adapter);
	} else {
		sds_ring = &adapter->recv_ctx->sds_rings[0];
		FUNC0(&sds_ring->napi);
	}

	return IRQ_HANDLED;
}