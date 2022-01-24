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
struct ipoib_dev_priv {int /*<<< orphan*/  poll_timer; } ;

/* Variables and functions */
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 struct ipoib_dev_priv* FUNC1 (struct net_device*) ; 
 scalar_t__ FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 scalar_t__ FUNC5 (struct ipoib_dev_priv*) ; 

__attribute__((used)) static void FUNC6(struct net_device *dev)
{
	struct ipoib_dev_priv *priv = FUNC1(dev);

	FUNC3(dev);
	while (FUNC5(priv))
		; /* nothing */

	if (FUNC2(dev))
		FUNC0(&priv->poll_timer, jiffies + 1);

	FUNC4(dev);
}