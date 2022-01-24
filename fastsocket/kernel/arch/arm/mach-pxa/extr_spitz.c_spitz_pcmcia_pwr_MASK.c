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
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SCOOP_CPR ; 
 int /*<<< orphan*/  SPITZ_PWR_CF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned short) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,int /*<<< orphan*/ ,unsigned short) ; 

__attribute__((used)) static void FUNC2(struct device *scoop, unsigned short cpr, int nr)
{
	/* Only need to override behaviour for slot 0 */
	if (nr == 0)
		FUNC0(SPITZ_PWR_CF, cpr);
	else
		FUNC1(scoop, SCOOP_CPR, cpr);
}