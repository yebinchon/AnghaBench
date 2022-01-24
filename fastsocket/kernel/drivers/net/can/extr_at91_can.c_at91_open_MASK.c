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
struct net_device {int /*<<< orphan*/  name; int /*<<< orphan*/  irq; } ;
struct at91_priv {int /*<<< orphan*/  clk; int /*<<< orphan*/  napi; } ;

/* Variables and functions */
 int EAGAIN ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  at91_irq ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct at91_priv* FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int FUNC7 (struct net_device*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct net_device*) ; 

__attribute__((used)) static int FUNC9(struct net_device *dev)
{
	struct at91_priv *priv = FUNC5(dev);
	int err;

	FUNC2(priv->clk);

	/* check or determine and set bittime */
	err = FUNC7(dev);
	if (err)
		goto out;

	/* register interrupt handler */
	if (FUNC8(dev->irq, at91_irq, IRQF_SHARED,
			dev->name, dev)) {
		err = -EAGAIN;
		goto out_close;
	}

	/* start chip and queuing */
	FUNC0(dev);
	FUNC4(&priv->napi);
	FUNC6(dev);

	return 0;

 out_close:
	FUNC3(dev);
 out:
	FUNC1(priv->clk);

	return err;
}