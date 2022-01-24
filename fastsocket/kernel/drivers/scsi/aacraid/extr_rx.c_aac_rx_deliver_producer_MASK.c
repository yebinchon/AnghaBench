#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct fib {int /*<<< orphan*/  hw_fib_va; struct aac_dev* dev; } ;
struct TYPE_5__ {int /*<<< orphan*/ * producer; } ;
struct aac_queue {int /*<<< orphan*/  lock; TYPE_2__ headers; int /*<<< orphan*/  numpending; } ;
struct aac_dev {TYPE_1__* queues; } ;
struct TYPE_6__ {unsigned long irq_mod; } ;
struct TYPE_4__ {struct aac_queue* queue; } ;

/* Variables and functions */
 size_t AdapNormCmdQueue ; 
 int /*<<< orphan*/  FUNC0 (struct aac_dev*,size_t) ; 
 TYPE_3__ aac_config ; 
 int /*<<< orphan*/  FUNC1 (struct aac_dev*,scalar_t__*,size_t,int /*<<< orphan*/ ,int,struct fib*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned long) ; 

int FUNC5(struct fib * fib)
{
	struct aac_dev *dev = fib->dev;
	struct aac_queue *q = &dev->queues->queue[AdapNormCmdQueue];
	unsigned long qflags;
	u32 Index;
	unsigned long nointr = 0;

	FUNC3(q->lock, qflags);
	FUNC1( dev, &Index, AdapNormCmdQueue, fib->hw_fib_va, 1, fib, &nointr);

	q->numpending++;
	*(q->headers.producer) = FUNC2(Index + 1);
	FUNC4(q->lock, qflags);
	if (!(nointr & aac_config.irq_mod))
		FUNC0(dev, AdapNormCmdQueue);

	return 0;
}