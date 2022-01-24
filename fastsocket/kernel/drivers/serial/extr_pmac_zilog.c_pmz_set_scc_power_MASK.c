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
struct uart_pmac_port {int /*<<< orphan*/  port_type; int /*<<< orphan*/  node; } ;

/* Variables and functions */
 int /*<<< orphan*/  PMAC_FTR_MODEM_ENABLE ; 
 int /*<<< orphan*/  PMAC_FTR_SCC_ENABLE ; 
 scalar_t__ FUNC0 (struct uart_pmac_port*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 

__attribute__((used)) static int FUNC3(struct uart_pmac_port *uap, int state)
{
	int delay = 0;
	int rc;

	if (state) {
		rc = FUNC1(
			PMAC_FTR_SCC_ENABLE, uap->node, uap->port_type, 1);
		FUNC2("port power on result: %d\n", rc);
		if (FUNC0(uap)) {
			rc = FUNC1(
				PMAC_FTR_MODEM_ENABLE, uap->node, 0, 1);
			delay = 2500;	/* wait for 2.5s before using */
			FUNC2("modem power result: %d\n", rc);
		}
	} else {
		/* TODO: Make that depend on a timer, don't power down
		 * immediately
		 */
		if (FUNC0(uap)) {
			rc = FUNC1(
				PMAC_FTR_MODEM_ENABLE, uap->node, 0, 0);
			FUNC2("port power off result: %d\n", rc);
		}
		FUNC1(PMAC_FTR_SCC_ENABLE, uap->node, uap->port_type, 0);
	}
	return delay;
}