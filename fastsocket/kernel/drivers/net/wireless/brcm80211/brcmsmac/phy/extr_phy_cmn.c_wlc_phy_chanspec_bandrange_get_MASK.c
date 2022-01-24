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
typedef  int /*<<< orphan*/  uint ;
typedef  int /*<<< orphan*/  u16 ;
struct brcms_phy {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct brcms_phy*) ; 
 scalar_t__ FUNC2 (struct brcms_phy*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct brcms_phy*,int /*<<< orphan*/ ) ; 

int FUNC6(struct brcms_phy *pi, u16 chanspec)
{
	int range = -1;
	uint channel = FUNC0(chanspec);
	uint freq = FUNC3(channel);

	if (FUNC2(pi))
		range = FUNC5(pi, channel);
	else if (FUNC1(pi))
		range = FUNC4(freq);

	return range;
}