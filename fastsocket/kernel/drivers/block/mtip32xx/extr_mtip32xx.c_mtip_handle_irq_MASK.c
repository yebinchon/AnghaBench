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
typedef  int u32 ;
struct mtip_port {scalar_t__ mmio; } ;
struct driver_data {scalar_t__ mmio; int /*<<< orphan*/  dd_flag; int /*<<< orphan*/  pdev; struct mtip_port* port; } ;
typedef  int irqreturn_t ;

/* Variables and functions */
 scalar_t__ HOST_IRQ_STAT ; 
 int IRQ_HANDLED ; 
 int IRQ_NONE ; 
 int /*<<< orphan*/  MTIP_DDF_REMOVE_PENDING_BIT ; 
 int PORT_IRQ_ERR ; 
 int PORT_IRQ_LEGACY ; 
 int PORT_IRQ_SDB_FIS ; 
 scalar_t__ PORT_IRQ_STAT ; 
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct driver_data*) ; 
 int /*<<< orphan*/  FUNC3 (struct driver_data*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct driver_data*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct driver_data*) ; 
 int FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int,scalar_t__) ; 

__attribute__((used)) static inline irqreturn_t FUNC10(struct driver_data *data)
{
	struct driver_data *dd = (struct driver_data *) data;
	struct mtip_port *port = dd->port;
	u32 hba_stat, port_stat;
	int rv = IRQ_NONE;

	hba_stat = FUNC6(dd->mmio + HOST_IRQ_STAT);
	if (hba_stat) {
		rv = IRQ_HANDLED;

		/* Acknowledge the interrupt status on the port.*/
		port_stat = FUNC6(port->mmio + PORT_IRQ_STAT);
		FUNC9(port_stat, port->mmio + PORT_IRQ_STAT);

		/* Demux port status */
		if (FUNC0(port_stat & PORT_IRQ_SDB_FIS))
			FUNC5(dd);

		if (FUNC8(port_stat & PORT_IRQ_ERR)) {
			if (FUNC8(FUNC1(dd->pdev))) {
				FUNC2(dd);
				/* don't proceed further */
				return IRQ_HANDLED;
			}
			if (FUNC7(MTIP_DDF_REMOVE_PENDING_BIT,
							&dd->dd_flag))
				return rv;

			FUNC3(dd, port_stat & PORT_IRQ_ERR);
		}

		if (FUNC8(port_stat & PORT_IRQ_LEGACY))
			FUNC4(dd, port_stat & PORT_IRQ_LEGACY);
	}

	/* acknowledge interrupt */
	FUNC9(hba_stat, dd->mmio + HOST_IRQ_STAT);

	return rv;
}