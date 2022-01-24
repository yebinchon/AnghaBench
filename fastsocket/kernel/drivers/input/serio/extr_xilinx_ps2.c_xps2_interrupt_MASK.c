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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct TYPE_3__ {int /*<<< orphan*/  parent; } ;
struct TYPE_4__ {TYPE_1__ dev; } ;
struct xps2data {int /*<<< orphan*/  flags; TYPE_2__ serio; scalar_t__ base_address; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  SERIO_PARITY ; 
 int /*<<< orphan*/  SERIO_TIMEOUT ; 
 scalar_t__ XPS2_IPISR_OFFSET ; 
 int XPS2_IPIXR_RX_ERR ; 
 int XPS2_IPIXR_RX_FULL ; 
 int XPS2_IPIXR_RX_OVF ; 
 int XPS2_IPIXR_TX_NOACK ; 
 int XPS2_IPIXR_WDT_TOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct xps2data*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC6(int irq, void *dev_id)
{
	struct xps2data *drvdata = dev_id;
	u32 intr_sr;
	u8 c;
	int status;

	/* Get the PS/2 interrupts and clear them */
	intr_sr = FUNC2(drvdata->base_address + XPS2_IPISR_OFFSET);
	FUNC3(drvdata->base_address + XPS2_IPISR_OFFSET, intr_sr);

	/* Check which interrupt is active */
	if (intr_sr & XPS2_IPIXR_RX_OVF)
		FUNC1(drvdata->serio.dev.parent, "receive overrun error\n");

	if (intr_sr & XPS2_IPIXR_RX_ERR)
		drvdata->flags |= SERIO_PARITY;

	if (intr_sr & (XPS2_IPIXR_TX_NOACK | XPS2_IPIXR_WDT_TOUT))
		drvdata->flags |= SERIO_TIMEOUT;

	if (intr_sr & XPS2_IPIXR_RX_FULL) {
		status = FUNC5(drvdata, &c);

		/* Error, if a byte is not received */
		if (status) {
			FUNC0(drvdata->serio.dev.parent,
				"wrong rcvd byte count (%d)\n", status);
		} else {
			FUNC4(&drvdata->serio, c, drvdata->flags);
			drvdata->flags = 0;
		}
	}

	return IRQ_HANDLED;
}