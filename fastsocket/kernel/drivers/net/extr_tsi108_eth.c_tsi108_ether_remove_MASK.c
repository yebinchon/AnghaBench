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
struct tsi108_prv_data {int /*<<< orphan*/  phyregs; int /*<<< orphan*/  regs; } ;
struct platform_device {int dummy; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct tsi108_prv_data* FUNC2 (struct net_device*) ; 
 struct net_device* FUNC3 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct platform_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 

__attribute__((used)) static int FUNC7(struct platform_device *pdev)
{
	struct net_device *dev = FUNC3(pdev);
	struct tsi108_prv_data *priv = FUNC2(dev);

	FUNC6(dev);
	FUNC5(dev);
	FUNC4(pdev, NULL);
	FUNC1(priv->regs);
	FUNC1(priv->phyregs);
	FUNC0(dev);

	return 0;
}