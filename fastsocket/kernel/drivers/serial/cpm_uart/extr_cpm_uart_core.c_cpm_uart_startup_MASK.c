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
struct uart_port {int /*<<< orphan*/  irq; int /*<<< orphan*/  line; } ;
struct uart_cpm_port {int flags; TYPE_2__* sccp; TYPE_1__* smcp; } ;
struct TYPE_4__ {int /*<<< orphan*/  scc_gsmrl; int /*<<< orphan*/  scc_sccm; } ;
struct TYPE_3__ {int /*<<< orphan*/  smc_smcmr; int /*<<< orphan*/  smc_smcm; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPM_CR_INIT_TRX ; 
 int FLAG_CONSOLE ; 
 scalar_t__ FUNC0 (struct uart_cpm_port*) ; 
 int SCC_GSMRL_ENR ; 
 int SCC_GSMRL_ENT ; 
 int SMCMR_REN ; 
 int SMCMR_TEN ; 
 int /*<<< orphan*/  SMCM_RX ; 
 int UART_SCCM_RX ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct uart_cpm_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cpm_uart_int ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct uart_port*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct uart_port *port)
{
	int retval;
	struct uart_cpm_port *pinfo = (struct uart_cpm_port *)port;

	FUNC5("CPM uart[%d]:startup\n", port->line);

	/* If the port is not the console, make sure rx is disabled. */
	if (!(pinfo->flags & FLAG_CONSOLE)) {
		/* Disable UART rx */
		if (FUNC0(pinfo)) {
			FUNC1(&pinfo->smcp->smc_smcmr, SMCMR_REN);
			FUNC3(&pinfo->smcp->smc_smcm, SMCM_RX);
		} else {
			FUNC2(&pinfo->sccp->scc_gsmrl, SCC_GSMRL_ENR);
			FUNC1(&pinfo->sccp->scc_sccm, UART_SCCM_RX);
		}
		FUNC4(pinfo, CPM_CR_INIT_TRX);
	}
	/* Install interrupt handler. */
	retval = FUNC6(port->irq, cpm_uart_int, 0, "cpm_uart", port);
	if (retval)
		return retval;

	/* Startup rx-int */
	if (FUNC0(pinfo)) {
		FUNC9(&pinfo->smcp->smc_smcm, SMCM_RX);
		FUNC7(&pinfo->smcp->smc_smcmr, (SMCMR_REN | SMCMR_TEN));
	} else {
		FUNC7(&pinfo->sccp->scc_sccm, UART_SCCM_RX);
		FUNC8(&pinfo->sccp->scc_gsmrl, (SCC_GSMRL_ENR | SCC_GSMRL_ENT));
	}

	return 0;
}