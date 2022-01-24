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
struct mddev {int level; int new_level; int /*<<< orphan*/  new_layout; } ;

/* Variables and functions */
 int /*<<< orphan*/  ALGORITHM_PARITY_N ; 
 int /*<<< orphan*/  EINVAL ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (struct mddev*,int) ; 
 void* FUNC2 (struct mddev*) ; 
 void* FUNC3 (struct mddev*) ; 
 void* FUNC4 (struct mddev*) ; 

__attribute__((used)) static void *FUNC5(struct mddev *mddev)
{
	/* raid5 can take over:
	 *  raid0 - if there is only one strip zone - make it a raid4 layout
	 *  raid1 - if there are two drives.  We need to know the chunk size
	 *  raid4 - trivial - just use a raid4 layout.
	 *  raid6 - Providing it is a *_6 layout
	 */
	if (mddev->level == 0)
		return FUNC1(mddev, 5);
	if (mddev->level == 1)
		return FUNC2(mddev);
	if (mddev->level == 4) {
		mddev->new_layout = ALGORITHM_PARITY_N;
		mddev->new_level = 5;
		return FUNC4(mddev);
	}
	if (mddev->level == 6)
		return FUNC3(mddev);

	return FUNC0(-EINVAL);
}