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
struct TYPE_3__ {int /*<<< orphan*/  parent; } ;
struct TYPE_4__ {TYPE_1__ dev; } ;
struct xps2data {scalar_t__ base_address; int /*<<< orphan*/  irq; TYPE_2__ serio; } ;
struct serio {struct xps2data* port_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRIVER_NAME ; 
 int /*<<< orphan*/  XPS2_GIER_GIE_MASK ; 
 scalar_t__ XPS2_GIER_OFFSET ; 
 scalar_t__ XPS2_IPIER_OFFSET ; 
 int /*<<< orphan*/  XPS2_IPIXR_RX_ALL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct xps2data*) ; 
 int /*<<< orphan*/  xps2_interrupt ; 
 int /*<<< orphan*/  FUNC3 (struct xps2data*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct serio *pserio)
{
	struct xps2data *drvdata = pserio->port_data;
	int error;
	u8 c;

	error = FUNC2(drvdata->irq, &xps2_interrupt, 0,
				DRIVER_NAME, drvdata);
	if (error) {
		FUNC0(drvdata->serio.dev.parent,
			"Couldn't allocate interrupt %d\n", drvdata->irq);
		return error;
	}

	/* start reception by enabling the interrupts */
	FUNC1(drvdata->base_address + XPS2_GIER_OFFSET, XPS2_GIER_GIE_MASK);
	FUNC1(drvdata->base_address + XPS2_IPIER_OFFSET, XPS2_IPIXR_RX_ALL);
	(void)FUNC3(drvdata, &c);

	return 0;		/* success */
}