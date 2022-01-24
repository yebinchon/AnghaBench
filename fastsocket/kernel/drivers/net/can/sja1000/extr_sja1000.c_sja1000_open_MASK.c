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
struct sja1000_priv {int flags; int /*<<< orphan*/  open_time; int /*<<< orphan*/  irq_flags; } ;
struct net_device {int /*<<< orphan*/  name; int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int EAGAIN ; 
 int SJA1000_CUSTOM_IRQ_HANDLER ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  jiffies ; 
 struct sja1000_priv* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int FUNC3 (struct net_device*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  sja1000_interrupt ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 

__attribute__((used)) static int FUNC7(struct net_device *dev)
{
	struct sja1000_priv *priv = FUNC1(dev);
	int err;

	/* set chip into reset mode */
	FUNC5(dev);

	/* common open */
	err = FUNC3(dev);
	if (err)
		return err;

	/* register interrupt handler, if not done by the device driver */
	if (!(priv->flags & SJA1000_CUSTOM_IRQ_HANDLER)) {
		err = FUNC4(dev->irq, &sja1000_interrupt, priv->irq_flags,
				  dev->name, (void *)dev);
		if (err) {
			FUNC0(dev);
			return -EAGAIN;
		}
	}

	/* init and start chi */
	FUNC6(dev);
	priv->open_time = jiffies;

	FUNC2(dev);

	return 0;
}