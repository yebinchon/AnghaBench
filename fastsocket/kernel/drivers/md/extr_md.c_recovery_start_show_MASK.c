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
struct md_rdev {unsigned long long recovery_offset; int /*<<< orphan*/  flags; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  In_sync ; 
 unsigned long long MaxSector ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,...) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t FUNC2(struct md_rdev *rdev, char *page)
{
	unsigned long long recovery_start = rdev->recovery_offset;

	if (FUNC1(In_sync, &rdev->flags) ||
	    recovery_start == MaxSector)
		return FUNC0(page, "none\n");

	return FUNC0(page, "%llu\n", recovery_start);
}