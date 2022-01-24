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
typedef  int uint8_t ;
struct intel_dvo_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CH7017_LVDS_POWER_DOWN ; 
 int CH7017_LVDS_POWER_DOWN_EN ; 
 int /*<<< orphan*/  FUNC0 (struct intel_dvo_device*,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static bool FUNC1(struct intel_dvo_device *dvo)
{
	uint8_t val;

	FUNC0(dvo, CH7017_LVDS_POWER_DOWN, &val);

	if (val & CH7017_LVDS_POWER_DOWN_EN)
		return false;
	else
		return true;
}