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
struct TYPE_2__ {unsigned int dataacc; scalar_t__ skip; scalar_t__ count; int /*<<< orphan*/  addr; scalar_t__ enabled; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int HW_WATCHPOINT_NUM ; 
 unsigned int WPDACC0_OFFSET ; 
 unsigned int WPDACC1_OFFSET ; 
 unsigned int WPDAEN0 ; 
 unsigned int WPDAEN1 ; 
 unsigned int WPDCNTEN0 ; 
 unsigned int WPDCNTEN1 ; 
 unsigned int WPDSRC0 ; 
 unsigned int WPDSRC1 ; 
 unsigned int WPIAEN0 ; 
 unsigned int WPIAEN1 ; 
 unsigned int WPIAEN2 ; 
 unsigned int WPIAEN3 ; 
 unsigned int WPIAEN4 ; 
 unsigned int WPIAEN5 ; 
 unsigned int WPICNTEN0 ; 
 unsigned int WPICNTEN1 ; 
 unsigned int WPICNTEN2 ; 
 unsigned int WPICNTEN3 ; 
 unsigned int WPICNTEN4 ; 
 unsigned int WPICNTEN5 ; 
 unsigned int WPPWR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC17 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC18 (unsigned int) ; 
 TYPE_1__* breakinfo ; 

void FUNC19(void)
{
	int breakno;
	unsigned int wpiactl = 0;
	unsigned int wpdactl = 0;
	int enable_wp = 0;

	for (breakno = 0; breakno < HW_WATCHPOINT_NUM; breakno++)
		if (breakinfo[breakno].enabled) {
			enable_wp = 1;

			switch (breakno) {
			case 0:
				wpiactl |= WPIAEN0|WPICNTEN0;
				FUNC6(breakinfo[breakno].addr);
				FUNC12(breakinfo[breakno].count
					+ breakinfo->skip);
				break;
			case 1:
				wpiactl |= WPIAEN1|WPICNTEN1;
				FUNC7(breakinfo[breakno].addr);
				FUNC13(breakinfo[breakno].count
					+ breakinfo->skip);
				break;
			case 2:
				wpiactl |= WPIAEN2|WPICNTEN2;
				FUNC8(breakinfo[breakno].addr);
				FUNC14(breakinfo[breakno].count
					+ breakinfo->skip);
				break;
			case 3:
				wpiactl |= WPIAEN3|WPICNTEN3;
				FUNC9(breakinfo[breakno].addr);
				FUNC15(breakinfo[breakno].count
					+ breakinfo->skip);
				break;
			case 4:
				wpiactl |= WPIAEN4|WPICNTEN4;
				FUNC10(breakinfo[breakno].addr);
				FUNC16(breakinfo[breakno].count
					+ breakinfo->skip);
				break;
			case 5:
				wpiactl |= WPIAEN5|WPICNTEN5;
				FUNC11(breakinfo[breakno].addr);
				FUNC17(breakinfo[breakno].count
					+ breakinfo->skip);
				break;
			case 6:
				wpdactl |= WPDAEN0|WPDCNTEN0|WPDSRC0;
				wpdactl |= breakinfo[breakno].dataacc
					<< WPDACC0_OFFSET;
				FUNC1(breakinfo[breakno].addr);
				FUNC3(breakinfo[breakno].count
					+ breakinfo->skip);
				break;
			case 7:
				wpdactl |= WPDAEN1|WPDCNTEN1|WPDSRC1;
				wpdactl |= breakinfo[breakno].dataacc
					<< WPDACC1_OFFSET;
				FUNC2(breakinfo[breakno].addr);
				FUNC4(breakinfo[breakno].count
					+ breakinfo->skip);
				break;
			}
		}

	/* Should enable WPPWR bit first before set any other
	 * WPIACTL and WPDACTL bits */
	if (enable_wp) {
		FUNC18(WPPWR);
		FUNC0();
		FUNC18(wpiactl|WPPWR);
		FUNC5(wpdactl);
		FUNC0();
	}
}