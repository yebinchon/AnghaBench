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
struct request {scalar_t__ buffer; TYPE_1__* rq_disk; } ;
struct TYPE_2__ {int /*<<< orphan*/  disk_name; } ;

/* Variables and functions */
 int BUSY_STAT ; 
 int DRQ_STAT ; 
 int /*<<< orphan*/  HD_DATA ; 
 int /*<<< orphan*/  HD_STATUS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (void (*) ()) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (struct request*) ; 
 scalar_t__ FUNC4 (struct request*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int) ; 
 struct request* hd_req ; 
 int /*<<< orphan*/  FUNC7 () ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  last_req ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 () ; 

__attribute__((used)) static void FUNC12(void)
{
	struct request *req;
	int i, retries = 100000;

	do {
		i = (unsigned) FUNC8(HD_STATUS);
		if (i & BUSY_STAT)
			continue;
		if (!FUNC0(i))
			break;
		if (i & DRQ_STAT)
			goto ok_to_read;
	} while (--retries > 0);
	FUNC5("read_intr", i);
	FUNC2();
	FUNC7();
	return;

ok_to_read:
	req = hd_req;
	FUNC9(HD_DATA, req->buffer, 256);
#ifdef DEBUG
	printk("%s: read: sector %ld, remaining = %u, buffer=%p\n",
	       req->rq_disk->disk_name, blk_rq_pos(req) + 1,
	       blk_rq_sectors(req) - 1, req->buffer+512);
#endif
	if (FUNC6(0, 512)) {
		FUNC1(&read_intr);
		return;
	}

	(void) FUNC8(HD_STATUS);
#if (HD_DELAY > 0)
	last_req = read_timer();
#endif
	FUNC7();
}