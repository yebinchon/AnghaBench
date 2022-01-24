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
 int /*<<< orphan*/  CEDE_LATENCY_PARAM_MAX_LENGTH ; 
 int /*<<< orphan*/  CEDE_LATENCY_TOKEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cede_parameters ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static int FUNC4(void)
{
	FUNC1(cede_parameters, 0, CEDE_LATENCY_PARAM_MAX_LENGTH);
	return FUNC2(FUNC3("ibm,get-system-parameter"), 3, 1,
			NULL,
			CEDE_LATENCY_TOKEN,
			FUNC0(cede_parameters),
			CEDE_LATENCY_PARAM_MAX_LENGTH);
}