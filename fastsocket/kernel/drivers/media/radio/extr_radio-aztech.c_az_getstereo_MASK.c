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
struct aztech {int /*<<< orphan*/  lock; int /*<<< orphan*/  io; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct aztech *az)
{
	int stereo = 1;

	FUNC1(&az->lock);
	if (FUNC0(az->io) & 1) 	/* bit set = mono */
		stereo = 0;
	FUNC2(&az->lock);
	return stereo;
}