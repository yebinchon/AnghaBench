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
 struct intel_dp* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct intel_dp*) ; 
 scalar_t__ FUNC2 (struct intel_dp*) ; 

__attribute__((used)) static void FUNC3(struct intel_encoder *encoder)
{
	struct intel_dp *intel_dp = FUNC0(&encoder->base);

	if (FUNC2(intel_dp))
		FUNC1(intel_dp);
}