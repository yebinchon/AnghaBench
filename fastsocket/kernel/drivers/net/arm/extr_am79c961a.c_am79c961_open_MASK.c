#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct net_device {int /*<<< orphan*/  name; int /*<<< orphan*/  irq; } ;
struct TYPE_2__ {int /*<<< orphan*/  expires; } ;
struct dev_priv {TYPE_1__ timer; int /*<<< orphan*/  stats; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  am79c961_interrupt ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 struct dev_priv* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct net_device*) ; 

__attribute__((used)) static int
FUNC7(struct net_device *dev)
{
	struct dev_priv *priv = FUNC3(dev);
	int ret;

	FUNC2 (&priv->stats, 0, sizeof (priv->stats));

	ret = FUNC6(dev->irq, am79c961_interrupt, 0, dev->name, dev);
	if (ret)
		return ret;

	FUNC1(dev);

	FUNC4(dev);

	priv->timer.expires = jiffies;
	FUNC0(&priv->timer);

	FUNC5(dev);

	return 0;
}