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

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  HDAPS_PORT_KMACT ; 
 int HDAPS_X_AXIS ; 
 int HDAPS_Y_AXIS ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 () ; 
 int hdaps_invert ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  km_activity ; 

__attribute__((used)) static int FUNC4(unsigned int port1, unsigned int port2,
			     int *x, int *y)
{
	/* do a sync refresh -- we need to be sure that we read fresh data */
	if (FUNC1())
		return -EIO;

	*y = FUNC3(port2);
	*x = FUNC3(port1);
	km_activity = FUNC2(HDAPS_PORT_KMACT);
	FUNC0();

	/* hdaps_invert is a bitvector to negate the axes */
	if (hdaps_invert & HDAPS_X_AXIS)
		*x = -*x;
	if (hdaps_invert & HDAPS_Y_AXIS)
		*y = -*y;

	return 0;
}