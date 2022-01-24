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
struct request_queue {int /*<<< orphan*/  limits; } ;
struct queue_limits {int dummy; } ;
struct block_device {int dummy; } ;
typedef  int /*<<< orphan*/  sector_t ;

/* Variables and functions */
 struct request_queue* FUNC0 (struct block_device*) ; 
 int FUNC1 (struct queue_limits*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct block_device*) ; 

int FUNC3(struct queue_limits *t, struct block_device *bdev,
		      sector_t start)
{
	struct request_queue *bq = FUNC0(bdev);

	start += FUNC2(bdev);

	return FUNC1(t, &bq->limits, start);
}