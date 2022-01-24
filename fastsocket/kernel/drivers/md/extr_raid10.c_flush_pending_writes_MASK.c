#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ head; } ;
struct r10conf {int /*<<< orphan*/  device_lock; int /*<<< orphan*/  wait_barrier; TYPE_1__* mddev; scalar_t__ pending_count; int /*<<< orphan*/  plug; TYPE_2__ pending_bio_list; } ;
struct bio {int bi_rw; int /*<<< orphan*/  bi_bdev; struct bio* bi_next; } ;
struct TYPE_3__ {int /*<<< orphan*/  bitmap; } ;

/* Variables and functions */
 int BIO_DISCARD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bio*,int /*<<< orphan*/ ) ; 
 struct bio* FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct bio*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(struct r10conf *conf)
{
	/* Any writes that have been queued but are awaiting
	 * bitmap updates get flushed here.
	 * We return 1 if any requests were actually submitted.
	 */
	int rv = 0;

	FUNC7(&conf->device_lock);

	if (conf->pending_bio_list.head) {
		struct bio *bio;
		bio = FUNC2(&conf->pending_bio_list);
		FUNC6(&conf->plug);
		conf->pending_count = 0;
		FUNC8(&conf->device_lock);
		/* flush any pending bitmap writes to disk
		 * before proceeding w/ I/O */
		FUNC3(conf->mddev->bitmap);
		FUNC10(&conf->wait_barrier);

		while (bio) { /* submit pending writes */
			struct bio *next = bio->bi_next;
			bio->bi_next = NULL;
			if (FUNC9((bio->bi_rw & BIO_DISCARD) &&
			    !FUNC4(FUNC0(bio->bi_bdev))))
				/* Just ignore it */
				FUNC1(bio, 0);
			else
				FUNC5(bio);
			bio = next;
		}
		rv = 1;
	} else
		FUNC8(&conf->device_lock);
	return rv;
}