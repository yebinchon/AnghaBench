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
struct macio_chip {int dummy; } ;
struct device_node {int dummy; } ;
struct TYPE_2__ {int board_flags; } ;

/* Variables and functions */
 long EPERM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OHARE_FCR ; 
 int /*<<< orphan*/  OH_IOBUS_ENABLE ; 
 int PMAC_MB_CAN_SLEEP ; 
 struct macio_chip* macio_chips ; 
 TYPE_1__ pmac_mb ; 

__attribute__((used)) static long FUNC2(struct device_node *node, long param, long value)
{
	struct macio_chip*	macio = &macio_chips[0];

	if ((pmac_mb.board_flags & PMAC_MB_CAN_SLEEP) == 0)
		return -EPERM;
	if (value == 1) {
		FUNC0(OHARE_FCR, OH_IOBUS_ENABLE);
	} else if (value == 0) {
		FUNC1(OHARE_FCR, OH_IOBUS_ENABLE);
	}

	return 0;
}