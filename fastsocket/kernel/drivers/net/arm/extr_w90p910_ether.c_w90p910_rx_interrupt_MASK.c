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
struct w90p910_ether {struct platform_device* pdev; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct net_device {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 unsigned int MISTA_RDU ; 
 unsigned int MISTA_RXBERR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 struct w90p910_ether* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 

__attribute__((used)) static irqreturn_t FUNC6(int irq, void *dev_id)
{
	struct net_device *dev;
	struct w90p910_ether  *ether;
	struct platform_device *pdev;
	unsigned int status;

	dev = dev_id;
	ether = FUNC1(dev);
	pdev = ether->pdev;

	FUNC3(dev, &status);

	if (status & MISTA_RDU) {
		FUNC2(dev);
		FUNC5(dev);

		return IRQ_HANDLED;
	} else if (status & MISTA_RXBERR) {
		FUNC0(&pdev->dev, "emc rx bus error\n");
		FUNC4(dev);
	}

	FUNC2(dev);
	return IRQ_HANDLED;
}