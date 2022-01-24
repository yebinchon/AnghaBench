#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct brcms_phy_lcnphy {scalar_t__ lcnphy_current_index; } ;
struct TYPE_2__ {struct brcms_phy_lcnphy* pi_lcnphy; } ;
struct brcms_phy {TYPE_1__ u; } ;
typedef  scalar_t__ s8 ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct brcms_phy*) ; 
 int FUNC1 (struct brcms_phy*) ; 
 scalar_t__ FUNC2 (struct brcms_phy*) ; 

s8 FUNC3(struct brcms_phy *pi)
{
	s8 index;
	struct brcms_phy_lcnphy *pi_lcn = pi->u.pi_lcnphy;

	if (FUNC0(pi))
		index = pi_lcn->lcnphy_current_index;
	else if (FUNC2(pi))
		index =	(s8) (FUNC1(
			      pi) / 2);
	else
		index = pi_lcn->lcnphy_current_index;
	return index;
}