#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct tp_params {int /*<<< orphan*/  use_5tuple_mode; int /*<<< orphan*/  pm_size; } ;
struct TYPE_6__ {int nports; } ;
struct TYPE_7__ {scalar_t__ regs; TYPE_1__ params; } ;
typedef  TYPE_2__ adapter_t ;

/* Variables and functions */
 scalar_t__ A_TP_GLOBAL_CONFIG ; 
 scalar_t__ A_TP_IN_CONFIG ; 
 scalar_t__ A_TP_OUT_CONFIG ; 
 scalar_t__ A_TP_TX_DROP_CONFIG ; 
 unsigned int DROP_MSEC ; 
 int /*<<< orphan*/  DROP_PKTS_CNT ; 
 int F_ENABLE_TX_DROP ; 
 int F_ENABLE_TX_ERROR ; 
 int F_OFFLOAD_DISABLE ; 
 int F_PATH_MTU ; 
 int F_TP_IN_CSPI_CHECK_IP_CSUM ; 
 int F_TP_IN_CSPI_CHECK_TCP_CSUM ; 
 int F_TP_IN_CSPI_CPL ; 
 int F_TP_IN_ESPI_CHECK_IP_CSUM ; 
 int F_TP_IN_ESPI_CHECK_TCP_CSUM ; 
 int F_TP_IN_ESPI_ETHERNET ; 
 int F_TP_OUT_CSPI_CPL ; 
 int F_TP_OUT_ESPI_ETHERNET ; 
 int F_TP_OUT_ESPI_GENERATE_IP_CSUM ; 
 int F_TP_OUT_ESPI_GENERATE_TCP_CSUM ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int) ; 
 scalar_t__ FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC8(adapter_t * ap, const struct tp_params *p,
		    unsigned int tp_clk)
{
	u32 val;

	if (!FUNC6(ap))
		return;

	val = F_TP_IN_CSPI_CPL | F_TP_IN_CSPI_CHECK_IP_CSUM |
		F_TP_IN_CSPI_CHECK_TCP_CSUM | F_TP_IN_ESPI_ETHERNET;
	if (!p->pm_size)
		val |= F_OFFLOAD_DISABLE;
	else
		val |= F_TP_IN_ESPI_CHECK_IP_CSUM | F_TP_IN_ESPI_CHECK_TCP_CSUM;
	FUNC7(val, ap->regs + A_TP_IN_CONFIG);
	FUNC7(F_TP_OUT_CSPI_CPL |
	       F_TP_OUT_ESPI_ETHERNET |
	       F_TP_OUT_ESPI_GENERATE_IP_CSUM |
	       F_TP_OUT_ESPI_GENERATE_TCP_CSUM, ap->regs + A_TP_OUT_CONFIG);
	FUNC7(FUNC2(64) |
	       F_PATH_MTU /* IP DF bit */  |
	       FUNC0(p->use_5tuple_mode) |
	       FUNC4(29), ap->regs + A_TP_GLOBAL_CONFIG);
	/*
	 * Enable pause frame deadlock prevention.
	 */
	if (FUNC5(ap) && ap->params.nports > 1) {
		u32 drop_ticks = DROP_MSEC * (tp_clk / 1000);

		FUNC7(F_ENABLE_TX_DROP | F_ENABLE_TX_ERROR |
		       FUNC1(drop_ticks) |
		       FUNC3(DROP_PKTS_CNT),
		       ap->regs + A_TP_TX_DROP_CONFIG);
	}
}