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
typedef  unsigned int u16 ;
struct b43_wldev {int dummy; } ;

/* Variables and functions */
 unsigned int B43_MAX_MMIO_ACCESS ; 
 int E2BIG ; 
 int EADDRNOTAVAIL ; 
 int EINVAL ; 
 unsigned int FUNC0 (struct b43_wldev*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct b43_wldev*,unsigned int,unsigned int) ; 
 int FUNC2 (char const*,char*,unsigned int*,unsigned int*,unsigned int*) ; 

__attribute__((used)) static int FUNC3(struct b43_wldev *dev,
				   const char *buf, size_t count)
{
	unsigned int addr, mask, set;
	int res;
	u16 val;

	res = FUNC2(buf, "0x%X 0x%X 0x%X", &addr, &mask, &set);
	if (res != 3)
		return -EINVAL;
	if (addr > B43_MAX_MMIO_ACCESS)
		return -EADDRNOTAVAIL;
	if ((mask > 0xFFFF) || (set > 0xFFFF))
		return -E2BIG;
	if ((addr % 2) != 0)
		return -EINVAL;

	if (mask == 0)
		val = 0;
	else
		val = FUNC0(dev, addr);
	val &= mask;
	val |= set;
	FUNC1(dev, addr, val);

	return 0;
}