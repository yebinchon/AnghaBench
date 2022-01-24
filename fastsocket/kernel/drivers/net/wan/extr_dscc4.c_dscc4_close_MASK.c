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
struct dscc4_dev_priv {int /*<<< orphan*/  flags; int /*<<< orphan*/  timer; } ;

/* Variables and functions */
 int /*<<< orphan*/  CCR0 ; 
 int /*<<< orphan*/  CCR2 ; 
 int /*<<< orphan*/  FakeReset ; 
 int /*<<< orphan*/  IMR ; 
 int PowerUp ; 
 int Vis ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct dscc4_dev_priv* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ,struct dscc4_dev_priv*,struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,struct dscc4_dev_priv*,struct net_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct net_device *dev)
{
	struct dscc4_dev_priv *dpriv = FUNC1(dev);

	FUNC0(&dpriv->timer);
	FUNC3(dev);

	FUNC4(PowerUp | Vis, 0, dpriv, dev, CCR0);
	FUNC4(0x00050000, 0, dpriv, dev, CCR2);
	FUNC5(0xffffffff, dpriv, dev, IMR);

	dpriv->flags |= FakeReset;

	FUNC2(dev);

	return 0;
}