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
struct gemtek {int muted; int /*<<< orphan*/  lock; int /*<<< orphan*/  io; } ;

/* Variables and functions */
 int /*<<< orphan*/  BU2614_FMES ; 
 int /*<<< orphan*/  BU2614_FMUN ; 
 int /*<<< orphan*/  BU2614_FREQ ; 
 int /*<<< orphan*/  BU2614_PORT ; 
 int /*<<< orphan*/  BU2614_STDF ; 
 int /*<<< orphan*/  BU2614_SWAL ; 
 int /*<<< orphan*/  BU2614_SWIN ; 
 int /*<<< orphan*/  BU2614_TEST ; 
 int GEMTEK_MT ; 
 int /*<<< orphan*/  GEMTEK_PLL_OFF ; 
 int /*<<< orphan*/  SHORT_DELAY ; 
 int /*<<< orphan*/  FUNC0 (struct gemtek*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct gemtek*) ; 
 scalar_t__ hardmute ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct gemtek *gt)
{
	int i;

	gt->muted = 1;

	if (hardmute) {
		/* Turn off PLL, disable data output */
		FUNC0(gt, BU2614_PORT, 0);
		FUNC0(gt, BU2614_FMES, 0);	/* CT bit off	*/
		FUNC0(gt, BU2614_SWIN, 0);	/* FM-mode	*/
		FUNC0(gt, BU2614_SWAL, 0);
		FUNC0(gt, BU2614_FMUN, 0);	/* GT bit off	*/
		FUNC0(gt, BU2614_TEST, 0);
		FUNC0(gt, BU2614_STDF, GEMTEK_PLL_OFF);
		FUNC0(gt, BU2614_FREQ, 0);
		FUNC1(gt);
		return;
	}

	FUNC3(&gt->lock);

	/* Read bus contents (CE, CK and DA). */
	i = FUNC2(gt->io);
	/* Write it back with mute flag set. */
	FUNC5((i >> 5) | GEMTEK_MT, gt->io);
	FUNC6(SHORT_DELAY);

	FUNC4(&gt->lock);
}