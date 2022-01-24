#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct request_queue {struct pktcdvd_device* queuedata; } ;
struct TYPE_2__ {int size; } ;
struct pktcdvd_device {TYPE_1__ settings; } ;
struct bvec_merge_data {int bi_sector; int bi_size; } ;
struct bio_vec {int dummy; } ;
typedef  int sector_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int PAGE_SIZE ; 
 int FUNC1 (int,struct pktcdvd_device*) ; 
 int FUNC2 (int,int) ; 

__attribute__((used)) static int FUNC3(struct request_queue *q, struct bvec_merge_data *bmd,
			  struct bio_vec *bvec)
{
	struct pktcdvd_device *pd = q->queuedata;
	sector_t zone = FUNC1(bmd->bi_sector, pd);
	int used = ((bmd->bi_sector - zone) << 9) + bmd->bi_size;
	int remaining = (pd->settings.size << 9) - used;
	int remaining2;

	/*
	 * A bio <= PAGE_SIZE must be allowed. If it crosses a packet
	 * boundary, pkt_make_request() will split the bio.
	 */
	remaining2 = PAGE_SIZE - bmd->bi_size;
	remaining = FUNC2(remaining, remaining2);

	FUNC0(remaining < 0);
	return remaining;
}