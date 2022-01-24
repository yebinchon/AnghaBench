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
struct qib_devdata {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int EPB_GLOBAL_WR ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct qib_devdata*,int,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

__attribute__((used)) static int FUNC7(struct qib_devdata *dd)
{
	int ret;

	ret = FUNC5(dd, FUNC4(0) | EPB_GLOBAL_WR, 0x2D, 0xFF);
	if (ret < 0)
		goto bail;

	/* more fine-tuning of what will be default */
	ret = FUNC5(dd, FUNC3(0), 3, 0xF);
	if (ret < 0)
		goto bail;

	ret = FUNC5(dd, FUNC0(0) | EPB_GLOBAL_WR, 0x40, 0xFF);
	if (ret < 0)
		goto bail;

	ret = FUNC5(dd, FUNC1(0) | EPB_GLOBAL_WR, 0x04, 0xFF);
	if (ret < 0)
		goto bail;

	ret = FUNC5(dd, FUNC2(0) | EPB_GLOBAL_WR, 0x04, 0xFF);
	if (ret < 0)
		goto bail;

	/*
	 * Delay for max possible number of steps, with slop.
	 * Each step is about 4usec.
	 */
	FUNC6(415);

	ret = FUNC5(dd, FUNC1(0) | EPB_GLOBAL_WR, 0x00, 0xFF);

bail:
	return ret;
}