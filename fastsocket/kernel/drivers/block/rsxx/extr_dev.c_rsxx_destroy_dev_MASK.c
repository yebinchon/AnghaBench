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
struct rsxx_cardinfo {int /*<<< orphan*/  major; TYPE_1__* queue; int /*<<< orphan*/ * gendisk; } ;
struct TYPE_2__ {int /*<<< orphan*/ * queuedata; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRIVER_NAME ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  enable_blkdev ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC3(struct rsxx_cardinfo *card)
{
	if (!enable_blkdev)
		return;

	FUNC1(card->gendisk);
	card->gendisk = NULL;

	FUNC0(card->queue);
	card->queue->queuedata = NULL;
	FUNC2(card->major, DRIVER_NAME);
}