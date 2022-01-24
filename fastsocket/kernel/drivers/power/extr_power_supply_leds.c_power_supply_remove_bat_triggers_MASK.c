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
struct power_supply {int /*<<< orphan*/  charging_full_trig_name; int /*<<< orphan*/  charging_trig_name; int /*<<< orphan*/  full_trig_name; int /*<<< orphan*/  full_trig; int /*<<< orphan*/  charging_trig; int /*<<< orphan*/  charging_full_trig; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct power_supply *psy)
{
	FUNC1(psy->charging_full_trig);
	FUNC1(psy->charging_trig);
	FUNC1(psy->full_trig);
	FUNC0(psy->full_trig_name);
	FUNC0(psy->charging_trig_name);
	FUNC0(psy->charging_full_trig_name);
}