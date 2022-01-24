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
struct niu {int flags; } ;

/* Variables and functions */
 unsigned long FUNC0 (int) ; 
 int EINVAL ; 
 int HOST_INFO_MACRDCTBLN ; 
 int NIU_FLAGS_XMAC ; 
 unsigned long FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct niu*,unsigned long,int,int) ; 

__attribute__((used)) static int FUNC3(struct niu *np,
			       int xmac_index, int bmac_index,
			       int rdc_table_num, int mac_pref)
{
	unsigned long reg;

	if (rdc_table_num & ~HOST_INFO_MACRDCTBLN)
		return -EINVAL;
	if (np->flags & NIU_FLAGS_XMAC)
		reg = FUNC1(xmac_index);
	else
		reg = FUNC0(bmac_index);
	FUNC2(np, reg, rdc_table_num, mac_pref);
	return 0;
}