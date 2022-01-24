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
struct work_struct {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  charge_start_time; TYPE_1__* machinfo; int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* charge ) (int) ;int /*<<< orphan*/  (* read_devdata ) (int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  SHARPSL_CHARGE_WAIT_TIME ; 
 int /*<<< orphan*/  SHARPSL_LED_ON ; 
 int /*<<< orphan*/  SHARPSL_STATUS_ACIN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 () ; 
 TYPE_2__ sharpsl_pm ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 

__attribute__((used)) static void FUNC10(struct work_struct *private_)
{
	FUNC0(sharpsl_pm.dev, "Toogling Charger at time: %lx\n", jiffies);

	if (!sharpsl_pm.machinfo->read_devdata(SHARPSL_STATUS_ACIN)) {
		FUNC4();
		return;
	} else if ((FUNC5() < 0) || (FUNC2() < 0)) {
		FUNC3();
		return;
	}

	FUNC6(SHARPSL_LED_ON);
	sharpsl_pm.machinfo->charge(0);
	FUNC1(SHARPSL_CHARGE_WAIT_TIME);
	sharpsl_pm.machinfo->charge(1);

	sharpsl_pm.charge_start_time = jiffies;
}