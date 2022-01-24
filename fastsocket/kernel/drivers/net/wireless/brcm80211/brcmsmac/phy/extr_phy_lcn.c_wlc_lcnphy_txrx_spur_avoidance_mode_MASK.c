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
struct brcms_phy {TYPE_1__* sh; } ;
struct TYPE_2__ {int /*<<< orphan*/  physhim; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct brcms_phy*,int,int) ; 

__attribute__((used)) static void
FUNC2(struct brcms_phy *pi, bool enable)
{
	if (enable) {
		FUNC1(pi, 0x942, 0x7);
		FUNC1(pi, 0x93b, ((1 << 13) + 23));
		FUNC1(pi, 0x93c, ((1 << 13) + 1989));

		FUNC1(pi, 0x44a, 0x084);
		FUNC1(pi, 0x44a, 0x080);
		FUNC1(pi, 0x6d3, 0x2222);
		FUNC1(pi, 0x6d3, 0x2220);
	} else {
		FUNC1(pi, 0x942, 0x0);
		FUNC1(pi, 0x93b, ((0 << 13) + 23));
		FUNC1(pi, 0x93c, ((0 << 13) + 1989));
	}
	FUNC0(pi->sh->physhim, enable);
}