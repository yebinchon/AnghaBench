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
struct intel_encoder {int /*<<< orphan*/  base; } ;
struct intel_dp {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRM_MODE_DPMS_ON ; 
 struct intel_dp* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct intel_dp*) ; 
 int /*<<< orphan*/  FUNC2 (struct intel_dp*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct intel_dp*) ; 
 int /*<<< orphan*/  FUNC4 (struct intel_dp*) ; 
 int /*<<< orphan*/  FUNC5 (struct intel_dp*) ; 
 int /*<<< orphan*/  FUNC6 (struct intel_dp*) ; 

__attribute__((used)) static void FUNC7(struct intel_encoder *encoder)
{
	struct intel_dp *intel_dp = FUNC0(&encoder->base);

	/* Make sure the panel is off before trying to change the mode. But also
	 * ensure that we have vdd while we switch off the panel. */
	FUNC5(intel_dp);
	FUNC3(intel_dp);
	FUNC2(intel_dp, DRM_MODE_DPMS_ON);
	FUNC4(intel_dp);

	/* cpu edp my only be disable _after_ the cpu pipe/plane is disabled. */
	if (!FUNC6(intel_dp))
		FUNC1(intel_dp);
}