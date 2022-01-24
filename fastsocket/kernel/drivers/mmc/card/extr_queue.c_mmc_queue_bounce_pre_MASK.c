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
struct mmc_queue {TYPE_1__* sg; int /*<<< orphan*/  bounce_buf; int /*<<< orphan*/  bounce_sg_len; int /*<<< orphan*/  bounce_sg; int /*<<< orphan*/  req; } ;
struct TYPE_2__ {int /*<<< orphan*/  length; } ;

/* Variables and functions */
 scalar_t__ WRITE ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC4(struct mmc_queue *mq)
{
	unsigned long flags;

	if (!mq->bounce_buf)
		return;

	if (FUNC2(mq->req) != WRITE)
		return;

	FUNC1(flags);
	FUNC3(mq->bounce_sg, mq->bounce_sg_len,
		mq->bounce_buf, mq->sg[0].length);
	FUNC0(flags);
}