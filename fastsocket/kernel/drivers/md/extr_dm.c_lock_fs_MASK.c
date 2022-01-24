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
struct mapped_device {int /*<<< orphan*/  flags; int /*<<< orphan*/ * frozen_sb; int /*<<< orphan*/  bdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMF_FROZEN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct mapped_device *md)
{
	int r;

	FUNC2(md->frozen_sb);

	md->frozen_sb = FUNC3(md->bdev);
	if (FUNC0(md->frozen_sb)) {
		r = FUNC1(md->frozen_sb);
		md->frozen_sb = NULL;
		return r;
	}

	FUNC4(DMF_FROZEN, &md->flags);

	return 0;
}