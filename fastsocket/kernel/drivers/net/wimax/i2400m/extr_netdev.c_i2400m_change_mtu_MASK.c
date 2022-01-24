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
struct net_device {int mtu; } ;
struct i2400m {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int I2400M_MAX_MTU ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int,int) ; 
 struct device* FUNC1 (struct i2400m*) ; 
 struct i2400m* FUNC2 (struct net_device*) ; 

__attribute__((used)) static
int FUNC3(struct net_device *net_dev, int new_mtu)
{
	int result;
	struct i2400m *i2400m = FUNC2(net_dev);
	struct device *dev = FUNC1(i2400m);

	if (new_mtu >= I2400M_MAX_MTU) {
		FUNC0(dev, "Cannot change MTU to %d (max is %d)\n",
			new_mtu, I2400M_MAX_MTU);
		result = -EINVAL;
	} else {
		net_dev->mtu = new_mtu;
		result = 0;
	}
	return result;
}