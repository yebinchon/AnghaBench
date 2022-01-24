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
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned short,scalar_t__) ; 

__attribute__((used)) static inline void
FUNC4 (struct net_device *dev, unsigned short val, int addr, int svflgs)
{
	unsigned long flags;

	if (svflgs)
		FUNC1 (flags);

	FUNC2(addr >> 12, REG_PAGE);
	FUNC3(val, ETHER1_RAM + ((addr & 4095) << 1));
	if (svflgs)
		FUNC0 (flags);
}