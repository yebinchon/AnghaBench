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
 int FUNC1 (struct sn_hwperf_object_info*) ; 
 scalar_t__ FUNC2 (struct sn_hwperf_object_info*) ; 
 char* slabname_ionode ; 
 char* slabname_node ; 
 char* slabname_other ; 
 char* slabname_router ; 
 int FUNC3 (struct sn_hwperf_object_info*,struct sn_hwperf_object_info*) ; 
 int FUNC4 (struct sn_hwperf_object_info*) ; 

__attribute__((used)) static const char *FUNC5(struct sn_hwperf_object_info *obj,
			struct sn_hwperf_object_info *objs, int *ordinal)
{
	int isnode;
	const char *slabname = slabname_other;

	if ((isnode = FUNC1(obj)) || FUNC0(obj)) {
	    	slabname = isnode ? slabname_node : slabname_ionode;
		*ordinal = FUNC4(obj);
	}
	else {
		*ordinal = FUNC3(obj, objs);
		if (FUNC2(obj))
			slabname = slabname_router;
	}

	return slabname;
}