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
 scalar_t__ ETHER1_RAM ; 
 int /*<<< orphan*/  REG_PAGE ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 unsigned short FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline unsigned short
FUNC4 (struct net_device *dev, int addr, int svflgs)
{
	unsigned long flags;
	unsigned short ret;

	if (svflgs)
		FUNC1 (flags);

	FUNC3(addr >> 12, REG_PAGE);
	ret = FUNC2(ETHER1_RAM + ((addr & 4095) << 1));
	if (svflgs)
		FUNC0 (flags);
	return ret;
}