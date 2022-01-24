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
typedef  int u64 ;
struct rsxx_cardinfo {int /*<<< orphan*/  halt; int /*<<< orphan*/  dma_fault; int /*<<< orphan*/  gendisk; } ;
struct rsxx_bio_meta {int /*<<< orphan*/  pending_dmas; int /*<<< orphan*/  start_time; int /*<<< orphan*/  error; struct bio* bio; } ;
struct request_queue {struct rsxx_cardinfo* queuedata; } ;
struct bio {scalar_t__ bi_sector; int bi_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rsxx_cardinfo*) ; 
 int EFAULT ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct bio*) ; 
 int /*<<< orphan*/  bio_dma_done_cb ; 
 int /*<<< orphan*/  FUNC3 (struct bio*,int) ; 
 int /*<<< orphan*/  bio_meta_pool ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char,struct rsxx_bio_meta*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct rsxx_cardinfo*,struct bio*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  jiffies ; 
 struct rsxx_bio_meta* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,struct rsxx_bio_meta*) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int FUNC11 (struct rsxx_cardinfo*,struct bio*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct rsxx_bio_meta*) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC13(struct request_queue *q, struct bio *bio)
{
	struct rsxx_cardinfo *card = q->queuedata;
	struct rsxx_bio_meta *bio_meta;
	int st = -EINVAL;

	FUNC10();

	if (!card)
		goto req_err;

	if (bio->bi_sector + (bio->bi_size >> 9) > FUNC7(card->gendisk))
		goto req_err;

	if (FUNC12(card->halt)) {
		st = -EFAULT;
		goto req_err;
	}

	if (FUNC12(card->dma_fault)) {
		st = (-EFAULT);
		goto req_err;
	}

	if (bio->bi_size == 0) {
		FUNC5(FUNC0(card), "size zero BIO!\n");
		goto req_err;
	}

	bio_meta = FUNC8(bio_meta_pool, GFP_KERNEL);
	if (!bio_meta) {
		st = -ENOMEM;
		goto req_err;
	}

	bio_meta->bio = bio;
	FUNC1(&bio_meta->error, 0);
	FUNC1(&bio_meta->pending_dmas, 0);
	bio_meta->start_time = jiffies;

	if (!FUNC12(card->halt))
		FUNC6(card, bio);

	FUNC4(FUNC0(card), "BIO[%c]: meta: %p addr8: x%llx size: %d\n",
		 FUNC2(bio) ? 'W' : 'R', bio_meta,
		 (u64)bio->bi_sector << 9, bio->bi_size);

	st = FUNC11(card, bio, &bio_meta->pending_dmas,
				    bio_dma_done_cb, bio_meta);
	if (st)
		goto queue_err;

	return 0;

queue_err:
	FUNC9(bio_meta_pool, bio_meta);
req_err:
	FUNC3(bio, st);

	return 0;
}