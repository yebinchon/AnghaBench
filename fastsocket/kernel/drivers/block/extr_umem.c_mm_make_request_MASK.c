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
struct request_queue {struct cardinfo* queuedata; } ;
struct cardinfo {int /*<<< orphan*/  lock; struct bio** biotail; } ;
struct bio {struct bio* bi_next; int /*<<< orphan*/  bi_size; scalar_t__ bi_sector; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct request_queue*) ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned long long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct request_queue *q, struct bio *bio)
{
	struct cardinfo *card = q->queuedata;
	FUNC1("mm_make_request %llu %u\n",
		 (unsigned long long)bio->bi_sector, bio->bi_size);

	FUNC2(&card->lock);
	*card->biotail = bio;
	bio->bi_next = NULL;
	card->biotail = &bio->bi_next;
	FUNC0(q);
	FUNC3(&card->lock);

	return 0;
}