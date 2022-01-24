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
struct net_device {int /*<<< orphan*/  base_addr; } ;
struct dev_priv {int /*<<< orphan*/  chip_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  CSR0 ; 
 int /*<<< orphan*/  CSR0_STOP ; 
 int /*<<< orphan*/  CSR3 ; 
 int /*<<< orphan*/  CSR3_MASKALL ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,int) ; 
 struct dev_priv* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(struct net_device *dev)
{
	struct dev_priv *priv = FUNC1(dev);

	FUNC2(&priv->chip_lock);
	FUNC4 (dev->base_addr, CSR0, CSR0_STOP);
	FUNC4 (dev->base_addr, CSR3, CSR3_MASKALL);
	FUNC3(&priv->chip_lock);

	FUNC0(dev, 0x66);
	FUNC0(dev, 0x99);

	return 0;
}