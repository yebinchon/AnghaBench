#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct uart_port {int /*<<< orphan*/  lock; } ;
struct TYPE_5__ {int /*<<< orphan*/  irq; } ;
struct uart_pmac_port {int* curregs; TYPE_3__* dev; TYPE_1__ port; int /*<<< orphan*/  flags; int /*<<< orphan*/ * node; } ;
struct TYPE_8__ {int /*<<< orphan*/  flags; } ;
struct TYPE_6__ {int /*<<< orphan*/  dev; } ;
struct TYPE_7__ {TYPE_2__ ofdev; } ;

/* Variables and functions */
 int EAGAIN ; 
 int ENODEV ; 
 int ENXIO ; 
 int EXT_INT_ENAB ; 
 int INT_ALL_Rx ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 int /*<<< orphan*/  PMACZILOG_FLAG_IS_IRQ_ON ; 
 int /*<<< orphan*/  PMACZILOG_FLAG_IS_OPEN ; 
 size_t R1 ; 
 int TxINT_ENAB ; 
 scalar_t__ FUNC0 (struct uart_pmac_port*) ; 
 int /*<<< orphan*/  FUNC1 (struct uart_pmac_port*) ; 
 int /*<<< orphan*/  FUNC2 (struct uart_pmac_port*) ; 
 scalar_t__ FUNC3 (struct uart_pmac_port*) ; 
 int FUNC4 (struct uart_pmac_port*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 
 TYPE_4__* FUNC10 (struct uart_pmac_port*) ; 
 int /*<<< orphan*/  pmz_interrupt ; 
 int /*<<< orphan*/  FUNC11 (struct uart_pmac_port*) ; 
 int /*<<< orphan*/  pmz_irq_mutex ; 
 int /*<<< orphan*/  FUNC12 (struct uart_pmac_port*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct uart_pmac_port*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,unsigned long) ; 
 struct uart_pmac_port* FUNC16 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC17 (struct uart_pmac_port*,size_t,int) ; 

__attribute__((used)) static int FUNC18(struct uart_port *port)
{
	struct uart_pmac_port *uap = FUNC16(port);
	unsigned long flags;
	int pwr_delay = 0;

	FUNC9("pmz: startup()\n");

	if (FUNC0(uap))
		return -EAGAIN;
	if (uap->node == NULL)
		return -ENODEV;

	FUNC7(&pmz_irq_mutex);

	uap->flags |= PMACZILOG_FLAG_IS_OPEN;

	/* A console is never powered down. Else, power up and
	 * initialize the chip
	 */
	if (!FUNC1(uap)) {
		FUNC14(&port->lock, flags);
		pwr_delay = FUNC4(uap);
		FUNC15(&port->lock, flags);
	}	

	FUNC10(uap)->flags |= PMACZILOG_FLAG_IS_IRQ_ON;
	if (FUNC13(uap->port.irq, pmz_interrupt, IRQF_SHARED, "PowerMac Zilog", uap)) {
		FUNC5(&uap->dev->ofdev.dev,
			"Unable to register zs interrupt handler.\n");
		FUNC12(uap, 0);
		FUNC8(&pmz_irq_mutex);
		return -ENXIO;
	}

	FUNC8(&pmz_irq_mutex);

	/* Right now, we deal with delay by blocking here, I'll be
	 * smarter later on
	 */
	if (pwr_delay != 0) {
		FUNC9("pmz: delaying %d ms\n", pwr_delay);
		FUNC6(pwr_delay);
	}

	/* IrDA reset is done now */
	if (FUNC3(uap))
		FUNC11(uap);

	/* Enable interrupts emission from the chip */
	FUNC14(&port->lock, flags);
	uap->curregs[R1] |= INT_ALL_Rx | TxINT_ENAB;
	if (!FUNC2(uap))
		uap->curregs[R1] |= EXT_INT_ENAB;
	FUNC17(uap, R1, uap->curregs[R1]);
       	FUNC15(&port->lock, flags);

	FUNC9("pmz: startup() done.\n");

	return 0;
}