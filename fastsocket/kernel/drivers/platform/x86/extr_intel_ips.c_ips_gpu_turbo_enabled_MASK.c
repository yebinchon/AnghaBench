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
struct ips_driver {int gpu_turbo_enabled; TYPE_1__* dev; int /*<<< orphan*/  gpu_busy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int HTS_GTD_DIS ; 
 int /*<<< orphan*/  THM_HTS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC1 (struct ips_driver*) ; 
 scalar_t__ late_i915_load ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC3(struct ips_driver *ips)
{
	if (!ips->gpu_busy && late_i915_load) {
		if (FUNC1(ips)) {
			FUNC0(&ips->dev->dev,
				 "i915 driver attached, reenabling gpu turbo\n");
			ips->gpu_turbo_enabled = !(FUNC2(THM_HTS) & HTS_GTD_DIS);
		}
	}

	return ips->gpu_turbo_enabled;
}