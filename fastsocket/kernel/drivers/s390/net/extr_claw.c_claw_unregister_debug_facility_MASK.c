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
 scalar_t__ claw_dbf_setup ; 
 scalar_t__ claw_dbf_trace ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 

__attribute__((used)) static void
FUNC1(void)
{
	if (claw_dbf_setup)
		FUNC0(claw_dbf_setup);
	if (claw_dbf_trace)
		FUNC0(claw_dbf_trace);
}