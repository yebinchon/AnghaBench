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
typedef  scalar_t__ u64 ;
struct amd64_pvt {int dummy; } ;

/* Variables and functions */
 unsigned int DRAM_RANGES ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct amd64_pvt*,unsigned int) ; 
 int FUNC1 (struct amd64_pvt*,unsigned int,scalar_t__,int*,int*) ; 
 scalar_t__ FUNC2 (struct amd64_pvt*,unsigned int) ; 
 scalar_t__ FUNC3 (struct amd64_pvt*,unsigned int) ; 

__attribute__((used)) static int FUNC4(struct amd64_pvt *pvt, u64 sys_addr,
				       int *node, int *chan_sel)
{
	int cs_found = -EINVAL;
	unsigned range;

	for (range = 0; range < DRAM_RANGES; range++) {

		if (!FUNC0(pvt, range))
			continue;

		if ((FUNC2(pvt, range)  <= sys_addr) &&
		    (FUNC3(pvt, range) >= sys_addr)) {

			cs_found = FUNC1(pvt, range,
							  sys_addr, node,
							  chan_sel);
			if (cs_found >= 0)
				break;
		}
	}
	return cs_found;
}