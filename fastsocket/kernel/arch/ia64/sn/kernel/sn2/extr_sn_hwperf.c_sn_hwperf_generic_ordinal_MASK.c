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
struct sn_hwperf_object_info {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct sn_hwperf_object_info*) ; 
 scalar_t__ FUNC1 (struct sn_hwperf_object_info*,struct sn_hwperf_object_info*) ; 

__attribute__((used)) static int FUNC2(struct sn_hwperf_object_info *obj,
				struct sn_hwperf_object_info *objs)
{
	int ordinal;
	struct sn_hwperf_object_info *p;

	for (ordinal=0, p=objs; p != obj; p++) {
		if (FUNC0(p))
			continue;
		if (FUNC1(p, obj))
			ordinal++;
	}

	return ordinal;
}