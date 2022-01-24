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
struct adb_request {int /*<<< orphan*/  complete; } ;

/* Variables and functions */
 int /*<<< orphan*/  PMU_POWER_CTRL ; 
 int PMU_POW_IRLED ; 
 int PMU_POW_OFF ; 
 int PMU_POW_ON ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct adb_request*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int) ; 

void 
FUNC2(int on)
{
	struct adb_request req;

	FUNC1(&req, NULL, 2, PMU_POWER_CTRL, PMU_POW_IRLED |
	    (on ? PMU_POW_ON : PMU_POW_OFF));
	while (!req.complete)
		FUNC0();
}