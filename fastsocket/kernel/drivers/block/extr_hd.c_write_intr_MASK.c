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
struct request {int /*<<< orphan*/  buffer; } ;

/* Variables and functions */
 int BUSY_STAT ; 
 int DRQ_STAT ; 
 int /*<<< orphan*/  HD_DATA ; 
 int /*<<< orphan*/  HD_STATUS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (void (*) ()) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (struct request*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int) ; 
 struct request* hd_req ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  last_req ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 () ; 

__attribute__((used)) static void FUNC10(void)
{
	struct request *req = hd_req;
	int i;
	int retries = 100000;

	do {
		i = (unsigned) FUNC7(HD_STATUS);
		if (i & BUSY_STAT)
			continue;
		if (!FUNC0(i))
			break;
		if ((FUNC3(req) <= 1) || (i & DRQ_STAT))
			goto ok_to_write;
	} while (--retries > 0);
	FUNC4("write_intr", i);
	FUNC2();
	FUNC6();
	return;

ok_to_write:
	if (FUNC5(0, 512)) {
		FUNC1(&write_intr);
		FUNC8(HD_DATA, req->buffer, 256);
		return;
	}

#if (HD_DELAY > 0)
	last_req = read_timer();
#endif
	FUNC6();
}