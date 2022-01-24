#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct driver_data {int /*<<< orphan*/  port; scalar_t__ mmio; TYPE_1__* pdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EFAULT ; 
 scalar_t__ HOST_CTL ; 
 int HOST_IRQ_EN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC5(struct driver_data *dd)
{
	/*
	 * Send standby immediate (E0h) to the drive
	 * so that it saves its state.
	 */
	if (FUNC2(dd->port) != 0) {
		FUNC0(&dd->pdev->dev,
			"Failed standby-immediate command\n");
		return -EFAULT;
	}

	/* Disable interrupts on the HBA.*/
	FUNC4(FUNC3(dd->mmio + HOST_CTL) & ~HOST_IRQ_EN,
			dd->mmio + HOST_CTL);
	FUNC1(dd->port);

	return 0;
}