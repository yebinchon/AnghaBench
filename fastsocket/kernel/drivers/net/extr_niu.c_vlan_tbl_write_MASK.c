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
struct niu {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int FUNC1 (int) ; 
 int ENET_VLAN_TBL_VLANRDCTBLN ; 
 int ENET_VLAN_TBL_VPR ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int) ; 

__attribute__((used)) static void FUNC5(struct niu *np, unsigned long index,
			   int port, int vpr, int rdc_table)
{
	u64 reg_val = FUNC2(FUNC0(index));

	reg_val &= ~((ENET_VLAN_TBL_VPR |
		      ENET_VLAN_TBL_VLANRDCTBLN) <<
		     FUNC1(port));
	if (vpr)
		reg_val |= (ENET_VLAN_TBL_VPR <<
			    FUNC1(port));
	reg_val |= (rdc_table << FUNC1(port));

	reg_val = FUNC4(reg_val);

	FUNC3(FUNC0(index), reg_val);
}