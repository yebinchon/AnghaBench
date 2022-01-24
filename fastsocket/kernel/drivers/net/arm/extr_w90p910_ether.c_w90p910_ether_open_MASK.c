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
struct w90p910_ether {int rx_packets; int rx_bytes; int /*<<< orphan*/  check_timer; int /*<<< orphan*/  txirq; int /*<<< orphan*/  rxirq; struct platform_device* pdev; } ;
struct platform_device {int /*<<< orphan*/  dev; int /*<<< orphan*/  name; } ;
struct net_device {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int EAGAIN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct net_device*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC4 (int) ; 
 struct w90p910_ether* FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct net_device*) ; 
 int /*<<< orphan*/  w90p910_rx_interrupt ; 
 int /*<<< orphan*/  FUNC13 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC14 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC15 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC16 (struct net_device*) ; 
 int /*<<< orphan*/  w90p910_tx_interrupt ; 

__attribute__((used)) static int FUNC17(struct net_device *dev)
{
	struct w90p910_ether *ether;
	struct platform_device *pdev;

	ether = FUNC5(dev);
	pdev = ether->pdev;

	FUNC12(dev);
	FUNC14(dev);
	FUNC13(dev);
	FUNC8(dev);
	FUNC9(dev);
	FUNC10(dev);
	FUNC15(dev);
	FUNC11(dev, 1);

	ether->rx_packets = 0x0;
	ether->rx_bytes = 0x0;

	if (FUNC7(ether->txirq, w90p910_tx_interrupt,
						0x0, pdev->name, dev)) {
		FUNC0(&pdev->dev, "register irq tx failed\n");
		return -EAGAIN;
	}

	if (FUNC7(ether->rxirq, w90p910_rx_interrupt,
						0x0, pdev->name, dev)) {
		FUNC0(&pdev->dev, "register irq rx failed\n");
		FUNC2(ether->txirq, dev);
		return -EAGAIN;
	}

	FUNC3(&ether->check_timer, jiffies + FUNC4(1000));
	FUNC6(dev);
	FUNC16(dev);

	FUNC1(&pdev->dev, "%s is OPENED\n", dev->name);

	return 0;
}