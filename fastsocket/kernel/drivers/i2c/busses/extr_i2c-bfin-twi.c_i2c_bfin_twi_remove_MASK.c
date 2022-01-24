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
struct platform_device {size_t id; } ;
struct bfin_twi_iface {int /*<<< orphan*/  regs_base; int /*<<< orphan*/  irq; int /*<<< orphan*/  adap; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct bfin_twi_iface*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bfin_twi_iface*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * pin_req ; 
 struct bfin_twi_iface* FUNC5 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct platform_device*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct platform_device *pdev)
{
	struct bfin_twi_iface *iface = FUNC5(pdev);

	FUNC6(pdev, NULL);

	FUNC1(&(iface->adap));
	FUNC0(iface->irq, iface);
	FUNC4(pin_req[pdev->id]);
	FUNC2(iface->regs_base);
	FUNC3(iface);

	return 0;
}