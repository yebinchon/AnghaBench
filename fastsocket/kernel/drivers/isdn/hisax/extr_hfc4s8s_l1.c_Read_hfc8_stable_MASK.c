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
typedef  scalar_t__ u_char ;
typedef  int /*<<< orphan*/  hfc4s8s_hw ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static u_char
FUNC1(hfc4s8s_hw * hw, int reg)
{
	u_char ref8;
	u_char in8;
	ref8 = FUNC0(hw, reg);
	while (((in8 = FUNC0(hw, reg)) != ref8)) {
		ref8 = in8;
	}
	return in8;
}