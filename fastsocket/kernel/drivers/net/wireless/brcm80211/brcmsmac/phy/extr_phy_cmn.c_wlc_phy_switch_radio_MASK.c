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
struct brcms_phy_pub {int dummy; } ;
struct brcms_phy {int /*<<< orphan*/  d11core; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct brcms_phy*) ; 
 scalar_t__ FUNC2 (struct brcms_phy*) ; 
 int /*<<< orphan*/  FUNC3 (struct brcms_phy*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  maccontrol ; 
 int /*<<< orphan*/  FUNC5 (struct brcms_phy*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct brcms_phy*,int) ; 

void FUNC7(struct brcms_phy_pub *pih, bool on)
{
	struct brcms_phy *pi = (struct brcms_phy *) pih;
	(void)FUNC4(pi->d11core, FUNC0(maccontrol));

	if (FUNC2(pi)) {
		FUNC6(pi, on);
	} else if (FUNC1(pi)) {
		if (on) {
			FUNC3(pi, 0x44c,
				    ~((0x1 << 8) |
				      (0x1 << 9) |
				      (0x1 << 10) | (0x1 << 11) | (0x1 << 12)));
			FUNC3(pi, 0x4b0, ~((0x1 << 3) | (0x1 << 11)));
			FUNC3(pi, 0x4f9, ~(0x1 << 3));
		} else {
			FUNC3(pi, 0x44d,
				    ~((0x1 << 10) |
				      (0x1 << 11) |
				      (0x1 << 12) | (0x1 << 13) | (0x1 << 14)));
			FUNC5(pi, 0x44c,
				   (0x1 << 8) |
				   (0x1 << 9) |
				   (0x1 << 10) | (0x1 << 11) | (0x1 << 12));

			FUNC3(pi, 0x4b7, ~((0x7f << 8)));
			FUNC3(pi, 0x4b1, ~((0x1 << 13)));
			FUNC5(pi, 0x4b0, (0x1 << 3) | (0x1 << 11));
			FUNC3(pi, 0x4fa, ~((0x1 << 3)));
			FUNC5(pi, 0x4f9, (0x1 << 3));
		}
	}
}