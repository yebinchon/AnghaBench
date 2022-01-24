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
struct uart_port {int /*<<< orphan*/  line; } ;
struct uart_cpm_port {int flags; TYPE_2__* sccp; TYPE_1__* smcp; } ;
struct TYPE_4__ {int /*<<< orphan*/  scc_gsmrl; int /*<<< orphan*/  scc_sccm; } ;
struct TYPE_3__ {int /*<<< orphan*/  smc_smcmr; int /*<<< orphan*/  smc_smcm; } ;

/* Variables and functions */
 int FLAG_CONSOLE ; 
 scalar_t__ FUNC0 (struct uart_cpm_port*) ; 
 int SCC_GSMRL_ENR ; 
 int SCC_GSMRL_ENT ; 
 int SMCMR_REN ; 
 int SMCMR_TEN ; 
 int SMCM_RX ; 
 int SMCM_TX ; 
 int UART_SCCM_RX ; 
 int UART_SCCM_TX ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int FUNC4 (struct uart_cpm_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct uart_cpm_port*) ; 
 int /*<<< orphan*/  FUNC6 (struct uart_cpm_port*) ; 
 int /*<<< orphan*/  FUNC7 (struct uart_cpm_port*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct uart_port *port)
{
	struct uart_cpm_port *pinfo = (struct uart_cpm_port *)port;
	int ret;

	FUNC8("CPM uart[%d]:request port\n", port->line);

	if (pinfo->flags & FLAG_CONSOLE)
		return 0;

	if (FUNC0(pinfo)) {
		FUNC3(&pinfo->smcp->smc_smcm, SMCM_RX | SMCM_TX);
		FUNC1(&pinfo->smcp->smc_smcmr, SMCMR_REN | SMCMR_TEN);
	} else {
		FUNC1(&pinfo->sccp->scc_sccm, UART_SCCM_TX | UART_SCCM_RX);
		FUNC2(&pinfo->sccp->scc_gsmrl, SCC_GSMRL_ENR | SCC_GSMRL_ENT);
	}

	ret = FUNC4(pinfo, 0);

	if (ret)
		return ret;

	FUNC7(pinfo);
	if (FUNC0(pinfo))
		FUNC6(pinfo);
	else
		FUNC5(pinfo);

	return 0;
}