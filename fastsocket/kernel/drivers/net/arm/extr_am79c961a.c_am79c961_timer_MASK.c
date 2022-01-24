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
struct net_device {int /*<<< orphan*/  name; int /*<<< orphan*/  base_addr; } ;
struct dev_priv {int /*<<< orphan*/  timer; } ;

/* Variables and functions */
 int /*<<< orphan*/  ISALED0 ; 
 unsigned int ISALED0_LNKST ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC1 (int) ; 
 struct dev_priv* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 unsigned int FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(unsigned long data)
{
	struct net_device *dev = (struct net_device *)data;
	struct dev_priv *priv = FUNC2(dev);
	unsigned int lnkstat, carrier;

	lnkstat = FUNC7(dev->base_addr, ISALED0) & ISALED0_LNKST;
	carrier = FUNC4(dev);

	if (lnkstat && !carrier) {
		FUNC5(dev);
		FUNC6("%s: link up\n", dev->name);
	} else if (!lnkstat && carrier) {
		FUNC3(dev);
		FUNC6("%s: link down\n", dev->name);
	}

	FUNC0(&priv->timer, jiffies + FUNC1(500));
}