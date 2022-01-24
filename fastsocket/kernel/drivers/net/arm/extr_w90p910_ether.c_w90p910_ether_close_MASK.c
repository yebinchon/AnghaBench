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
struct w90p910_ether {int /*<<< orphan*/  rxirq; int /*<<< orphan*/  txirq; int /*<<< orphan*/  clk; int /*<<< orphan*/  rmiiclk; int /*<<< orphan*/  check_timer; int /*<<< orphan*/  tdesc_phys; int /*<<< orphan*/  tdesc; int /*<<< orphan*/  rdesc_phys; int /*<<< orphan*/  rdesc; struct platform_device* pdev; } ;
struct tran_pdesc {int dummy; } ;
struct recv_pdesc {int dummy; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct net_device*) ; 
 struct w90p910_ether* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 

__attribute__((used)) static int FUNC6(struct net_device *dev)
{
	struct w90p910_ether *ether = FUNC4(dev);
	struct platform_device *pdev;

	pdev = ether->pdev;

	FUNC2(&pdev->dev, sizeof(struct recv_pdesc),
					ether->rdesc, ether->rdesc_phys);
	FUNC2(&pdev->dev, sizeof(struct tran_pdesc),
					ether->tdesc, ether->tdesc_phys);

	FUNC5(dev);

	FUNC1(&ether->check_timer);
	FUNC0(ether->rmiiclk);
	FUNC0(ether->clk);

	FUNC3(ether->txirq, dev);
	FUNC3(ether->rxirq, dev);

	return 0;
}