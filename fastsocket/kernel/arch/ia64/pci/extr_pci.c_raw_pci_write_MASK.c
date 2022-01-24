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
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u32 ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,unsigned int,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,unsigned int,unsigned int,int) ; 
 scalar_t__ FUNC2 (int,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 scalar_t__ sal_revision ; 

int FUNC4(unsigned int seg, unsigned int bus, unsigned int devfn,
	       int reg, int len, u32 value)
{
	u64 addr;
	int mode, result;

	if ((seg > 65535) || (bus > 255) || (devfn > 255) || (reg > 4095))
		return -EINVAL;

	if ((seg | reg) <= 255) {
		addr = FUNC0(seg, bus, devfn, reg);
		mode = 0;
	} else if (sal_revision >= FUNC2(3,2)) {
		addr = FUNC1(seg, bus, devfn, reg);
		mode = 1;
	} else {
		return -EINVAL;
	}
	result = FUNC3(addr, mode, len, value);
	if (result != 0)
		return -EINVAL;
	return 0;
}