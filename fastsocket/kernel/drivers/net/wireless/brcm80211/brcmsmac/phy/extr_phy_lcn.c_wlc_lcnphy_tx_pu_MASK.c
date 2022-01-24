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
typedef  int /*<<< orphan*/  u16 ;
struct brcms_phy {int /*<<< orphan*/  radio_chanspec; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct brcms_phy*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct brcms_phy*,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct brcms_phy*,int,int) ; 

void FUNC4(struct brcms_phy *pi, bool bEnable)
{
	if (!bEnable) {

		FUNC1(pi, 0x43b, ~(u16) ((0x1 << 1) | (0x1 << 4)));

		FUNC2(pi, 0x43c, (0x1 << 1), 1 << 1);

		FUNC1(pi, 0x44c,
			    ~(u16) ((0x1 << 3) |
				    (0x1 << 5) |
				    (0x1 << 12) |
				    (0x1 << 0) | (0x1 << 1) | (0x1 << 2)));

		FUNC1(pi, 0x44d,
			    ~(u16) ((0x1 << 3) | (0x1 << 5) | (0x1 << 14)));
		FUNC2(pi, 0x44d, (0x1 << 2), 1 << 2);

		FUNC2(pi, 0x44d, (0x1 << 1) | (0x1 << 0), (0x1 << 0));

		FUNC1(pi, 0x4f9,
			    ~(u16) ((0x1 << 0) | (0x1 << 1) | (0x1 << 2)));

		FUNC1(pi, 0x4fa,
			    ~(u16) ((0x1 << 0) | (0x1 << 1) | (0x1 << 2)));
	} else {

		FUNC2(pi, 0x43b, (0x1 << 1), 1 << 1);
		FUNC2(pi, 0x43c, (0x1 << 1), 0 << 1);

		FUNC2(pi, 0x43b, (0x1 << 4), 1 << 4);
		FUNC2(pi, 0x43c, (0x1 << 6), 0 << 6);

		FUNC2(pi, 0x44c, (0x1 << 12), 1 << 12);
		FUNC2(pi, 0x44d, (0x1 << 14), 1 << 14);

		FUNC3(pi, true, false);

		FUNC2(pi, 0x44d, (0x1 << 2), 0 << 2);
		FUNC2(pi, 0x44c, (0x1 << 2), 1 << 2);

		if (FUNC0(pi->radio_chanspec)) {

			FUNC2(pi, 0x44c, (0x1 << 3), 1 << 3);
			FUNC2(pi, 0x44d, (0x1 << 3), 1 << 3);

			FUNC2(pi, 0x44c, (0x1 << 5), 1 << 5);
			FUNC2(pi, 0x44d, (0x1 << 5), 0 << 5);

			FUNC2(pi, 0x4f9, (0x1 << 1), 1 << 1);
			FUNC2(pi, 0x4fa, (0x1 << 1), 1 << 1);

			FUNC2(pi, 0x4f9, (0x1 << 2), 1 << 2);
			FUNC2(pi, 0x4fa, (0x1 << 2), 1 << 2);

			FUNC2(pi, 0x4f9, (0x1 << 0), 1 << 0);
			FUNC2(pi, 0x4fa, (0x1 << 0), 1 << 0);
		} else {

			FUNC2(pi, 0x44c, (0x1 << 3), 1 << 3);
			FUNC2(pi, 0x44d, (0x1 << 3), 0 << 3);

			FUNC2(pi, 0x44c, (0x1 << 5), 1 << 5);
			FUNC2(pi, 0x44d, (0x1 << 5), 1 << 5);

			FUNC2(pi, 0x4f9, (0x1 << 1), 1 << 1);
			FUNC2(pi, 0x4fa, (0x1 << 1), 0 << 1);

			FUNC2(pi, 0x4f9, (0x1 << 2), 1 << 2);
			FUNC2(pi, 0x4fa, (0x1 << 2), 0 << 2);

			FUNC2(pi, 0x4f9, (0x1 << 0), 1 << 0);
			FUNC2(pi, 0x4fa, (0x1 << 0), 0 << 0);
		}
	}
}