#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ charge_mode; int /*<<< orphan*/  dev; TYPE_1__* machinfo; } ;
struct TYPE_3__ {int (* read_devdata ) (int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 scalar_t__ CHRG_ON ; 
 int /*<<< orphan*/  SHARPSL_STATUS_ACIN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  sharpsl_bat ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 TYPE_2__ sharpsl_pm ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(unsigned long data)
{
	int acin = sharpsl_pm.machinfo->read_devdata(SHARPSL_STATUS_ACIN);

	FUNC0(sharpsl_pm.dev, "AC Status: %d\n",acin);

	FUNC2();
	if (acin && (sharpsl_pm.charge_mode != CHRG_ON))
		FUNC4();
	else if (sharpsl_pm.charge_mode == CHRG_ON)
		FUNC3();

	FUNC1(&sharpsl_bat, 0);
}