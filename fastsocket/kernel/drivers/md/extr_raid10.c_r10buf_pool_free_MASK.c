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
struct r10conf {int copies; } ;
struct r10bio {TYPE_2__* devs; } ;
struct bio {TYPE_1__* bi_io_vec; } ;
struct TYPE_4__ {struct bio* repl_bio; struct bio* bio; } ;
struct TYPE_3__ {int /*<<< orphan*/ * bv_page; } ;

/* Variables and functions */
 int RESYNC_PAGES ; 
 int /*<<< orphan*/  FUNC0 (struct bio*) ; 
 int /*<<< orphan*/  FUNC1 (struct r10bio*,struct r10conf*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(void *__r10_bio, void *data)
{
	int i;
	struct r10conf *conf = data;
	struct r10bio *r10bio = __r10_bio;
	int j;

	for (j=0; j < conf->copies; j++) {
		struct bio *bio = r10bio->devs[j].bio;
		if (bio) {
			for (i = 0; i < RESYNC_PAGES; i++) {
				FUNC2(bio->bi_io_vec[i].bv_page);
				bio->bi_io_vec[i].bv_page = NULL;
			}
			FUNC0(bio);
		}
		bio = r10bio->devs[j].repl_bio;
		if (bio)
			FUNC0(bio);
	}
	FUNC1(r10bio, conf);
}