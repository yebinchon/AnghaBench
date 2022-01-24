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
struct r0conf {struct r0conf* devlist; struct r0conf* strip_zone; } ;
struct mddev {struct r0conf* private; int /*<<< orphan*/  queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct r0conf*) ; 

__attribute__((used)) static int FUNC2(struct mddev *mddev)
{
	struct r0conf *conf = mddev->private;

	FUNC0(mddev->queue); /* the unplug fn references 'conf'*/
	FUNC1(conf->strip_zone);
	FUNC1(conf->devlist);
	FUNC1(conf);
	mddev->private = NULL;
	return 0;
}