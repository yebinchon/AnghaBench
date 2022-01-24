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
struct slip {int dummy; } ;
struct net_device {int mtu; } ;

/* Variables and functions */
 int EINVAL ; 
 struct slip* FUNC0 (struct net_device*) ; 
 int FUNC1 (struct slip*,int) ; 

__attribute__((used)) static int FUNC2(struct net_device *dev, int new_mtu)
{
	struct slip *sl = FUNC0(dev);

	if (new_mtu < 68 || new_mtu > 65534)
		return -EINVAL;

	if (new_mtu != dev->mtu)
		return FUNC1(sl, new_mtu);
	return 0;
}