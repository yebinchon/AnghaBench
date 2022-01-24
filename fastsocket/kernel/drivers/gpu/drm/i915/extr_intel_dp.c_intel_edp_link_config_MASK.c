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
struct intel_dp {int lane_count; int /*<<< orphan*/  link_bw; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 struct intel_dp* FUNC1 (int /*<<< orphan*/ *) ; 

void
FUNC2(struct intel_encoder *intel_encoder,
		       int *lane_num, int *link_bw)
{
	struct intel_dp *intel_dp = FUNC1(&intel_encoder->base);

	*lane_num = intel_dp->lane_count;
	*link_bw = FUNC0(intel_dp->link_bw);
}