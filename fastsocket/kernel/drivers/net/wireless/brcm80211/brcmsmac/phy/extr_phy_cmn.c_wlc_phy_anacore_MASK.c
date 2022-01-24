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
struct brcms_phy_pub {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  phy_rev; } ;
struct brcms_phy {TYPE_1__ pubpi; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct brcms_phy*) ; 
 scalar_t__ FUNC1 (struct brcms_phy*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct brcms_phy*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct brcms_phy*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct brcms_phy*,int,int) ; 

void FUNC6(struct brcms_phy_pub *pih, bool on)
{
	struct brcms_phy *pi = (struct brcms_phy *) pih;

	if (FUNC1(pi)) {
		if (on) {
			if (FUNC2(pi->pubpi.phy_rev, 3)) {
				FUNC5(pi, 0xa6, 0x0d);
				FUNC5(pi, 0x8f, 0x0);
				FUNC5(pi, 0xa7, 0x0d);
				FUNC5(pi, 0xa5, 0x0);
			} else {
				FUNC5(pi, 0xa5, 0x0);
			}
		} else {
			if (FUNC2(pi->pubpi.phy_rev, 3)) {
				FUNC5(pi, 0x8f, 0x07ff);
				FUNC5(pi, 0xa6, 0x0fd);
				FUNC5(pi, 0xa5, 0x07ff);
				FUNC5(pi, 0xa7, 0x0fd);
			} else {
				FUNC5(pi, 0xa5, 0x7fff);
			}
		}
	} else if (FUNC0(pi)) {
		if (on) {
			FUNC3(pi, 0x43b,
				    ~((0x1 << 0) | (0x1 << 1) | (0x1 << 2)));
		} else {
			FUNC4(pi, 0x43c,
				   (0x1 << 0) | (0x1 << 1) | (0x1 << 2));
			FUNC4(pi, 0x43b,
				   (0x1 << 0) | (0x1 << 1) | (0x1 << 2));
		}
	}
}