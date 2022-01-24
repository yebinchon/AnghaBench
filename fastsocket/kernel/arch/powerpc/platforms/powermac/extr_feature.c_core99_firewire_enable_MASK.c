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
struct macio_chip {scalar_t__ type; int flags; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 long ENODEV ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int MACIO_FLAG_FW_SUPPORTED ; 
 int /*<<< orphan*/  UNI_N_CLOCK_CNTL ; 
 int /*<<< orphan*/  UNI_N_CLOCK_CNTL_FW ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct macio_chip* macio_chips ; 
 scalar_t__ macio_intrepid ; 
 scalar_t__ macio_keylargo ; 
 scalar_t__ macio_pangea ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static long
FUNC6(struct device_node *node, long param, long value)
{
	unsigned long flags;
	struct macio_chip *macio;

	macio = &macio_chips[0];
	if (macio->type != macio_keylargo && macio->type != macio_pangea &&
	    macio->type != macio_intrepid)
		return -ENODEV;
	if (!(macio->flags & MACIO_FLAG_FW_SUPPORTED))
		return -ENODEV;

	FUNC0(flags);
	if (value) {
		FUNC3(UNI_N_CLOCK_CNTL, UNI_N_CLOCK_CNTL_FW);
		(void)FUNC4(UNI_N_CLOCK_CNTL);
	} else {
		FUNC2(UNI_N_CLOCK_CNTL, UNI_N_CLOCK_CNTL_FW);
		(void)FUNC4(UNI_N_CLOCK_CNTL);
	}
	FUNC1(flags);
	FUNC5(1);

	return 0;
}