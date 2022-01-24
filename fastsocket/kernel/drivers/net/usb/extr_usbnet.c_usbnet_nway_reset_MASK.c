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
struct TYPE_2__ {int /*<<< orphan*/  mdio_write; } ;
struct usbnet {TYPE_1__ mii; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int FUNC0 (TYPE_1__*) ; 
 struct usbnet* FUNC1 (struct net_device*) ; 

int FUNC2(struct net_device *net)
{
	struct usbnet *dev = FUNC1(net);

	if (!dev->mii.mdio_write)
		return -EOPNOTSUPP;

	return FUNC0(&dev->mii);
}