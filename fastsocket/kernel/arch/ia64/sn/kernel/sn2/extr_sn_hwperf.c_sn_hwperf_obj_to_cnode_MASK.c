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
struct sn_hwperf_object_info {int /*<<< orphan*/  location; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (struct sn_hwperf_object_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct sn_hwperf_object_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct sn_hwperf_object_info*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct sn_hwperf_object_info * obj)
{
	if (!FUNC3(obj) && !FUNC2(obj))
		FUNC0();
	if (FUNC1(obj))
		return -1;
	return FUNC4(obj->location);
}