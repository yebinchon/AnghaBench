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
struct TYPE_2__ {int /*<<< orphan*/  exit; int /*<<< orphan*/  fixups; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  _dtb_start ; 
 int /*<<< orphan*/  bridge_base ; 
 int /*<<< orphan*/  c2k_fixups ; 
 int /*<<< orphan*/  c2k_reset ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 TYPE_1__ platform_ops ; 
 scalar_t__ FUNC4 () ; 

void FUNC5(unsigned long r3, unsigned long r4, unsigned long r5,
			unsigned long r6, unsigned long r7)
{
	FUNC0();

	FUNC2(_dtb_start);

	bridge_base = FUNC3();

	platform_ops.fixups = c2k_fixups;
	platform_ops.exit = c2k_reset;

	if (FUNC4() < 0)
		FUNC1();
}