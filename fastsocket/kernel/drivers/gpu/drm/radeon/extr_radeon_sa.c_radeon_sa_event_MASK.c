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
struct radeon_sa_manager {int /*<<< orphan*/ * flist; } ;

/* Variables and functions */
 int RADEON_NUM_RINGS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC1 (struct radeon_sa_manager*) ; 
 unsigned int FUNC2 (struct radeon_sa_manager*) ; 

__attribute__((used)) static bool FUNC3(struct radeon_sa_manager *sa_manager,
			    unsigned size, unsigned align)
{
	unsigned soffset, eoffset, wasted;
	int i;

	for (i = 0; i < RADEON_NUM_RINGS; ++i) {
		if (!FUNC0(&sa_manager->flist[i])) {
			return true;
		}
	}

	soffset = FUNC2(sa_manager);
	eoffset = FUNC1(sa_manager);
	wasted = (align - (soffset % align)) % align;

	if ((eoffset - soffset) >= (size + wasted)) {
		return true;
	}

	return false;
}