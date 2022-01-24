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
struct r5conf {scalar_t__ seq_flush; scalar_t__ seq_write; int /*<<< orphan*/  device_lock; } ;
struct mddev {int flags; int /*<<< orphan*/  bitmap; struct r5conf* private; } ;
struct md_thread {struct mddev* mddev; } ;
struct bio {int dummy; } ;

/* Variables and functions */
 int MD_CHANGE_PENDING ; 
 int /*<<< orphan*/  FUNC0 (struct r5conf*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct r5conf*) ; 
 int /*<<< orphan*/  FUNC4 (struct mddev*) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 struct bio* FUNC6 (struct r5conf*) ; 
 int FUNC7 (struct r5conf*,struct bio*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct mddev*) ; 

__attribute__((used)) static void FUNC11(struct md_thread *thread)
{
	struct mddev *mddev = thread->mddev;
	struct r5conf *conf = mddev->private;
	int handled;

	FUNC5("+++ raid5d active\n");

	FUNC4(mddev);

	handled = 0;
	FUNC8(&conf->device_lock);
	while (1) {
		struct bio *bio;
		int batch_size;

		if (conf->seq_flush != conf->seq_write) {
			int seq = conf->seq_flush;
			FUNC9(&conf->device_lock);
			FUNC2(mddev->bitmap);
			FUNC8(&conf->device_lock);
			conf->seq_write = seq;
			FUNC0(conf);
		}

		while ((bio = FUNC6(conf))) {
			int ok;
			FUNC9(&conf->device_lock);
			ok = FUNC7(conf, bio);
			FUNC8(&conf->device_lock);
			if (!ok)
				break;
			handled++;
		}

		batch_size = FUNC3(conf);
		if (!batch_size)
			break;
		handled += batch_size;

		if (mddev->flags & ~(1<<MD_CHANGE_PENDING)) {
			FUNC9(&conf->device_lock);
			FUNC4(mddev);
			FUNC8(&conf->device_lock);
		}
	}
	FUNC5("%d stripes handled\n", handled);

	FUNC9(&conf->device_lock);

	FUNC1();
	FUNC10(mddev);

	FUNC5("--- raid5d inactive\n");
}