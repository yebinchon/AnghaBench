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
struct uart_port {int /*<<< orphan*/  line; } ;
struct mpsc_port_info {int MPSC_CHR_2_m; scalar_t__ mpsc_base; scalar_t__ mirror_regs; } ;

/* Variables and functions */
 scalar_t__ MPSC_CHR_2 ; 
 int MPSC_CHR_2_RA ; 
 int /*<<< orphan*/  SDMA_SDCM_AR ; 
 int /*<<< orphan*/  FUNC0 (struct mpsc_port_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC5(struct uart_port *port)
{
	struct mpsc_port_info *pi = (struct mpsc_port_info *)port;

	FUNC1("mpsc_stop_rx[%d]: Stopping...\n", port->line);

	if (pi->mirror_regs) {
		FUNC4(pi->MPSC_CHR_2_m | MPSC_CHR_2_RA,
				pi->mpsc_base + MPSC_CHR_2);
		/* Erratum prevents reading CHR_2 so just delay for a while */
		FUNC3(100);
	} else {
		FUNC4(FUNC2(pi->mpsc_base + MPSC_CHR_2) | MPSC_CHR_2_RA,
				pi->mpsc_base + MPSC_CHR_2);

		while (FUNC2(pi->mpsc_base + MPSC_CHR_2) & MPSC_CHR_2_RA)
			FUNC3(10);
	}

	FUNC0(pi, SDMA_SDCM_AR);
}