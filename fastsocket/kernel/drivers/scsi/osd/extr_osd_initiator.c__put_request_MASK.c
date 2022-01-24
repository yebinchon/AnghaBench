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
struct request {int /*<<< orphan*/  bio; int /*<<< orphan*/  q; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct request*) ; 
 int /*<<< orphan*/  FUNC2 (struct request*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct request*) ; 
 int /*<<< orphan*/  FUNC4 (struct request*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct request *rq , bool is_async)
{
	if (is_async) {
		FUNC0(rq->bio);
		FUNC1(rq->q, rq);
	} else {
		/*
		 * If osd_finalize_request() was called but the request was not
		 * executed through the block layer, then we must release BIOs.
		 * TODO: Keep error code in or->async_error. Need to audit all
		 *       code paths.
		 */
		if (FUNC5(rq->bio))
			FUNC2(rq, -ENOMEM, FUNC4(rq));
		else
			FUNC3(rq);
	}
}