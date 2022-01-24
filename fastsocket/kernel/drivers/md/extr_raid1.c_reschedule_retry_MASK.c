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
struct r1conf {int /*<<< orphan*/  wait_barrier; int /*<<< orphan*/  device_lock; int /*<<< orphan*/  nr_queued; int /*<<< orphan*/  retry_list; } ;
struct r1bio {int /*<<< orphan*/  retry_list; struct mddev* mddev; } ;
struct mddev {int /*<<< orphan*/  thread; struct r1conf* private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct r1bio *r1_bio)
{
	unsigned long flags;
	struct mddev *mddev = r1_bio->mddev;
	struct r1conf *conf = mddev->private;

	FUNC2(&conf->device_lock, flags);
	FUNC0(&r1_bio->retry_list, &conf->retry_list);
	conf->nr_queued ++;
	FUNC3(&conf->device_lock, flags);

	FUNC4(&conf->wait_barrier);
	FUNC1(mddev->thread);
}