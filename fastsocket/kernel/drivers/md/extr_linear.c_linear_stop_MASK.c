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
struct mddev {int /*<<< orphan*/ * private; int /*<<< orphan*/  queue; int /*<<< orphan*/  reconfig_mutex; } ;
struct linear_conf {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct linear_conf*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 struct linear_conf* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5 (struct mddev *mddev)
{
	struct linear_conf *conf =
		FUNC4(mddev->private,
					  FUNC2(
						  &mddev->reconfig_mutex));

	/*
	 * We do not require rcu protection here since
	 * we hold reconfig_mutex for both linear_add and
	 * linear_stop, so they cannot race.
	 * We should make sure any old 'conf's are properly
	 * freed though.
	 */
	FUNC3();
	FUNC0(mddev->queue); /* the unplug fn references 'conf'*/
	FUNC1(conf);
	mddev->private = NULL;

	return 0;
}