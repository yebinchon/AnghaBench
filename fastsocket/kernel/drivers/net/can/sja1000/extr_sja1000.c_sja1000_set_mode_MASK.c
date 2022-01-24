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
struct sja1000_priv {int /*<<< orphan*/  open_time; } ;
struct net_device {int dummy; } ;
typedef  enum can_mode { ____Placeholder_can_mode } can_mode ;

/* Variables and functions */
#define  CAN_MODE_START 128 
 int EINVAL ; 
 int EOPNOTSUPP ; 
 struct sja1000_priv* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 

__attribute__((used)) static int FUNC4(struct net_device *dev, enum can_mode mode)
{
	struct sja1000_priv *priv = FUNC0(dev);

	if (!priv->open_time)
		return -EINVAL;

	switch (mode) {
	case CAN_MODE_START:
		FUNC3(dev);
		if (FUNC1(dev))
			FUNC2(dev);
		break;

	default:
		return -EOPNOTSUPP;
	}

	return 0;
}