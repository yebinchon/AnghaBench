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

/* Variables and functions */
 unsigned short FUNC0 (unsigned short) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,int) ; 

__attribute__((used)) static unsigned short FUNC2(struct net_device *dev, unsigned short reg)
{
	unsigned short ret;
	if (reg<0x8)	
		ret = FUNC0(reg);
	else {
		FUNC1(dev, 1);	
		ret = FUNC0(reg);
		FUNC1(dev, 0);
	}
	return ret;
}