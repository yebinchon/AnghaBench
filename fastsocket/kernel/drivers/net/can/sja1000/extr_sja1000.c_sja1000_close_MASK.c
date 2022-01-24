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
struct sja1000_priv {int flags; scalar_t__ open_time; } ;
struct net_device {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int SJA1000_CUSTOM_IRQ_HANDLER ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,void*) ; 
 struct sja1000_priv* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 

__attribute__((used)) static int FUNC5(struct net_device *dev)
{
	struct sja1000_priv *priv = FUNC2(dev);

	FUNC3(dev);
	FUNC4(dev);

	if (!(priv->flags & SJA1000_CUSTOM_IRQ_HANDLER))
		FUNC1(dev->irq, (void *)dev);

	FUNC0(dev);

	priv->open_time = 0;

	return 0;
}