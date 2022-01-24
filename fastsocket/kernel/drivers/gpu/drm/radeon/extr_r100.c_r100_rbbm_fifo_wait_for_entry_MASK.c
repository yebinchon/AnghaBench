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
typedef  unsigned int uint32_t ;
struct radeon_device {unsigned int usec_timeout; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned int RADEON_RBBM_FIFOCNT_MASK ; 
 int /*<<< orphan*/  RADEON_RBBM_STATUS ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct radeon_device *rdev, unsigned n)
{
	unsigned i;
	uint32_t tmp;

	for (i = 0; i < rdev->usec_timeout; i++) {
		tmp = FUNC1(RADEON_RBBM_STATUS) & RADEON_RBBM_FIFOCNT_MASK;
		if (tmp >= n) {
			return 0;
		}
		FUNC0(1);
	}
	return -1;
}