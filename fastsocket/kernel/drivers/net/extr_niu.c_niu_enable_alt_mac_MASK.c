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
typedef  int u64 ;
struct niu {int flags; } ;

/* Variables and functions */
 unsigned long BMAC_ADDR_CMPEN ; 
 int EINVAL ; 
 int NIU_FLAGS_XMAC ; 
 unsigned long XMAC_ADDR_CMPEN ; 
 int FUNC0 (struct niu*) ; 
 int FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long,int) ; 

__attribute__((used)) static int FUNC3(struct niu *np, int index, int on)
{
	unsigned long reg;
	u64 val, mask;

	if (index >= FUNC0(np))
		return -EINVAL;

	if (np->flags & NIU_FLAGS_XMAC) {
		reg = XMAC_ADDR_CMPEN;
		mask = 1 << index;
	} else {
		reg = BMAC_ADDR_CMPEN;
		mask = 1 << (index + 1);
	}

	val = FUNC1(reg);
	if (on)
		val |= mask;
	else
		val &= ~mask;
	FUNC2(reg, val);

	return 0;
}