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
struct net_device {int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  irq_handler_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQF_SHARED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,struct net_device*) ; 

__attribute__((used)) static int
FUNC2(int irq, const char *irq_name,
		 irq_handler_t handler, struct net_device *ndev)
{
	int ret;

	ret = FUNC1(irq, handler, IRQF_SHARED, irq_name, ndev);

	if (ret) {
		FUNC0(&ndev->dev, "failure to request IRQ %d\n", irq);
		return ret;
	}

	return 0;
}