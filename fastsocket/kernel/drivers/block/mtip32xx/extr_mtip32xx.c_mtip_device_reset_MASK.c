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
struct driver_data {scalar_t__ mmio; int /*<<< orphan*/  port; int /*<<< orphan*/  pdev; } ;

/* Variables and functions */
 int EFAULT ; 
 scalar_t__ HOST_CTL ; 
 int HOST_IRQ_EN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct driver_data*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC7(struct driver_data *dd)
{
	int rv = 0;

	if (FUNC1(dd->pdev))
		return 0;

	if (FUNC2(dd) < 0)
		rv = -EFAULT;

	FUNC0(1);
	FUNC3(dd->port);
	FUNC4(dd->port);

	/* Enable interrupts on the HBA. */
	FUNC6(FUNC5(dd->mmio + HOST_CTL) | HOST_IRQ_EN,
					dd->mmio + HOST_CTL);
	return rv;
}