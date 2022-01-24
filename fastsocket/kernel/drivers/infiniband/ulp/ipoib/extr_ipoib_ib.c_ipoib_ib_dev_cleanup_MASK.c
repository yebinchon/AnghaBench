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
struct net_device {int dummy; } ;
struct ipoib_dev_priv {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ipoib_dev_priv*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 struct ipoib_dev_priv* FUNC4 (struct net_device*) ; 

void FUNC5(struct net_device *dev)
{
	struct ipoib_dev_priv *priv = FUNC4(dev);

	FUNC0(priv, "cleaning up ib_dev\n");

	FUNC2(dev, 1);
	FUNC1(dev);

	FUNC3(dev);
}