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
struct macio_chip {scalar_t__ type; int flags; } ;
struct device_node {int dummy; } ;
struct TYPE_2__ {int board_flags; } ;

/* Variables and functions */
 long ENODEV ; 
 int /*<<< orphan*/  KL_GPIO_FW_CABLE_POWER ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int MACIO_FLAG_FW_SUPPORTED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int PMAC_MB_HAS_FW_POWER ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 struct macio_chip* macio_chips ; 
 scalar_t__ macio_intrepid ; 
 scalar_t__ macio_keylargo ; 
 scalar_t__ macio_pangea ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 TYPE_1__ pmac_mb ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static long
FUNC6(struct device_node *node, long param, long value)
{
	unsigned long flags;
	struct macio_chip *macio;

	/* Trick: we allow NULL node */
	if ((pmac_mb.board_flags & PMAC_MB_HAS_FW_POWER) == 0)
		return -ENODEV;
	macio = &macio_chips[0];
	if (macio->type != macio_keylargo && macio->type != macio_pangea &&
	    macio->type != macio_intrepid)
		return -ENODEV;
	if (!(macio->flags & MACIO_FLAG_FW_SUPPORTED))
		return -ENODEV;

	FUNC0(flags);
	if (value) {
		FUNC2(KL_GPIO_FW_CABLE_POWER , 0);
		FUNC1(KL_GPIO_FW_CABLE_POWER);
		FUNC5(10);
	} else {
		FUNC2(KL_GPIO_FW_CABLE_POWER , 4);
		FUNC1(KL_GPIO_FW_CABLE_POWER); FUNC5(10);
	}
	FUNC3(flags);
	FUNC4(1);

	return 0;
}