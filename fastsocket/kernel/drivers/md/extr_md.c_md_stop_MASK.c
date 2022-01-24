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
struct mddev {scalar_t__ bio_set; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mddev*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct mddev*) ; 

void FUNC3(struct mddev *mddev)
{
	/* stop the array and free an attached data structures.
	 * This is called from dm-raid
	 */
	FUNC0(mddev);
	FUNC2(mddev);
	if (mddev->bio_set)
		FUNC1(mddev->bio_set);
}