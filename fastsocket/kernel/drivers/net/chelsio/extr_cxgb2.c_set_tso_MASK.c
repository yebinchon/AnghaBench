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
typedef  scalar_t__ u32 ;
struct net_device {struct adapter* ml_priv; } ;
struct adapter {int flags; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int TSO_CAPABLE ; 
 int FUNC0 (struct net_device*,scalar_t__) ; 

__attribute__((used)) static int FUNC1(struct net_device *dev, u32 value)
{
	struct adapter *adapter = dev->ml_priv;

	if (!(adapter->flags & TSO_CAPABLE))
		return value ? -EOPNOTSUPP : 0;
	return FUNC0(dev, value);
}