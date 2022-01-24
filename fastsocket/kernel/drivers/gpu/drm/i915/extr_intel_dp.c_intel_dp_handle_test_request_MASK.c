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

/* Variables and functions */
 int /*<<< orphan*/  DP_TEST_NAK ; 
 int /*<<< orphan*/  DP_TEST_RESPONSE ; 
 int /*<<< orphan*/  FUNC0 (struct intel_dp*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC1(struct intel_dp *intel_dp)
{
	/* NAK by default */
	FUNC0(intel_dp, DP_TEST_RESPONSE, DP_TEST_NAK);
}