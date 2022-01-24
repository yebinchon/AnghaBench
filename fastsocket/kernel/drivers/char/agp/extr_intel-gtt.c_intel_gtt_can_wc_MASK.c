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
 int INTEL_GTT_GEN ; 
 scalar_t__ FUNC0 () ; 

__attribute__((used)) static bool FUNC1(void)
{
	if (INTEL_GTT_GEN <= 2)
		return false;

	if (INTEL_GTT_GEN >= 6)
		return false;

	/* Reports of major corruption with ILK vt'd enabled */
	if (FUNC0())
		return false;

	return true;
}