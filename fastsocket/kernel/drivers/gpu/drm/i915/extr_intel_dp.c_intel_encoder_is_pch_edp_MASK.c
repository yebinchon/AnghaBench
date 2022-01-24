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
struct intel_dp {int dummy; } ;
struct drm_encoder {int dummy; } ;

/* Variables and functions */
 struct intel_dp* FUNC0 (struct drm_encoder*) ; 
 int FUNC1 (struct intel_dp*) ; 

bool FUNC2(struct drm_encoder *encoder)
{
	struct intel_dp *intel_dp;

	if (!encoder)
		return false;

	intel_dp = FUNC0(encoder);

	return FUNC1(intel_dp);
}