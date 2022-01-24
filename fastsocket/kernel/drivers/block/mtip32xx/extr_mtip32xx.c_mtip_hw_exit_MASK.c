#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct driver_data {TYPE_2__* port; TYPE_1__* pdev; int /*<<< orphan*/  tasklet; scalar_t__ mmio; int /*<<< orphan*/  dd_flag; } ;
struct TYPE_6__ {int /*<<< orphan*/  command_list_dma; int /*<<< orphan*/  command_list; int /*<<< orphan*/  cmd_timer; int /*<<< orphan*/  flags; } ;
struct TYPE_5__ {int /*<<< orphan*/  dev; int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int ATA_SECT_SIZE ; 
 scalar_t__ HOST_CTL ; 
 int HOST_IRQ_EN ; 
 scalar_t__ HW_PORT_PRIV_DMA_SZ ; 
 int /*<<< orphan*/  MTIP_DDF_CLEANUP_BIT ; 
 int /*<<< orphan*/  MTIP_PF_REBUILD_BIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct driver_data*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 scalar_t__ FUNC6 (TYPE_2__*) ; 
 int FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC11(struct driver_data *dd)
{
	/*
	 * Send standby immediate (E0h) to the drive so that it
	 * saves its state.
	 */
	if (!FUNC9(MTIP_DDF_CLEANUP_BIT, &dd->dd_flag)) {

		if (!FUNC9(MTIP_PF_REBUILD_BIT, &dd->port->flags))
			if (FUNC6(dd->port))
				FUNC1(&dd->pdev->dev,
					"STANDBY IMMEDIATE failed\n");

		/* de-initialize the port. */
		FUNC5(dd->port);

		/* Disable interrupts on the HBA. */
		FUNC10(FUNC7(dd->mmio + HOST_CTL) & ~HOST_IRQ_EN,
				dd->mmio + HOST_CTL);
	}

	FUNC0(&dd->port->cmd_timer);

	/* Release the IRQ. */
	FUNC2(&dd->pdev->dev, dd->pdev->irq, dd);

	/* Stop the bottom half tasklet. */
	FUNC8(&dd->tasklet);

	/* Free the command/command header memory. */
	FUNC3(&dd->pdev->dev,
			HW_PORT_PRIV_DMA_SZ + (ATA_SECT_SIZE * 4),
			dd->port->command_list,
			dd->port->command_list_dma);
	/* Free the memory allocated for the for structure. */
	FUNC4(dd->port);

	return 0;
}