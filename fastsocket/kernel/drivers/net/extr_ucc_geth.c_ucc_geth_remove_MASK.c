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
struct ucc_geth_private {int dummy; } ;
struct device {int dummy; } ;
struct of_device {struct device dev; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 struct net_device* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 struct ucc_geth_private* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct ucc_geth_private*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 

__attribute__((used)) static int FUNC6(struct of_device* ofdev)
{
	struct device *device = &ofdev->dev;
	struct net_device *dev = FUNC0(device);
	struct ucc_geth_private *ugeth = FUNC3(dev);

	FUNC5(dev);
	FUNC2(dev);
	FUNC4(ugeth);
	FUNC1(device, NULL);

	return 0;
}