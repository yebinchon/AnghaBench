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

/* Variables and functions */
 int /*<<< orphan*/  MSR_AMD64_TSC_RATIO ; 
 int /*<<< orphan*/  SVM_FEATURE_TSC_RATE ; 
 int /*<<< orphan*/  TSC_RATIO_DEFAULT ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(void *garbage)
{
	/* Make sure we clean up behind us */
	if (FUNC2(SVM_FEATURE_TSC_RATE))
		FUNC3(MSR_AMD64_TSC_RATIO, TSC_RATIO_DEFAULT);

	FUNC1();

	FUNC0();
}