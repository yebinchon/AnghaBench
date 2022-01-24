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
 int EINVAL ; 
 unsigned int PSERIES_DRCONF_MEM_ADD ; 
 unsigned int PSERIES_DRCONF_MEM_REMOVE ; 
 int FUNC0 (unsigned long,unsigned long) ; 
 unsigned long FUNC1 () ; 
 int FUNC2 (unsigned long,unsigned long) ; 

__attribute__((used)) static int FUNC3(unsigned long *base, unsigned int action)
{
	unsigned long memblock_size;
	int rc;

	memblock_size = FUNC1();
	if (!memblock_size)
 		return -EINVAL;

	if (action == PSERIES_DRCONF_MEM_ADD) {
		rc = FUNC0(*base, memblock_size);
		rc = (rc < 0) ? -EINVAL : 0;
	} else if (action == PSERIES_DRCONF_MEM_REMOVE) {
		rc = FUNC2(*base, memblock_size);
	} else {
		rc = -EINVAL;
	}

	return rc;
}