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
struct mpconf {struct mpconf* multipaths; int /*<<< orphan*/  pool; } ;
struct mddev {struct mpconf* private; int /*<<< orphan*/  queue; int /*<<< orphan*/  thread; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mpconf*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4 (struct mddev *mddev)
{
	struct mpconf *conf = mddev->private;

	FUNC2(&mddev->thread);
	FUNC0(mddev->queue); /* the unplug fn references 'conf'*/
	FUNC3(conf->pool);
	FUNC1(conf->multipaths);
	FUNC1(conf);
	mddev->private = NULL;
	return 0;
}