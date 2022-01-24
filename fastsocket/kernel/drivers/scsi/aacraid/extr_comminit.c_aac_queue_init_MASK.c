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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {void** consumer; void** producer; } ;
struct aac_queue {int entries; TYPE_1__ headers; int /*<<< orphan*/  lockdata; int /*<<< orphan*/ * lock; int /*<<< orphan*/  qfull; int /*<<< orphan*/  cmdq; int /*<<< orphan*/  cmdready; struct aac_dev* dev; scalar_t__ numpending; } ;
struct aac_dev {int dummy; } ;
typedef  void* __le32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 void* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct aac_dev * dev, struct aac_queue * q, u32 *mem, int qsize)
{
	q->numpending = 0;
	q->dev = dev;
	FUNC2(&q->cmdready);
	FUNC0(&q->cmdq);
	FUNC2(&q->qfull);
	FUNC3(&q->lockdata);
	q->lock = &q->lockdata;
	q->headers.producer = (__le32 *)mem;
	q->headers.consumer = (__le32 *)(mem+1);
	*(q->headers.producer) = FUNC1(qsize);
	*(q->headers.consumer) = FUNC1(qsize);
	q->entries = qsize;
}