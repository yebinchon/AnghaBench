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
struct request_queue {struct memstick_dev* queuedata; } ;
struct request {int dummy; } ;
struct mspro_block_data {int has_request; scalar_t__ eject; } ;
struct memstick_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENODEV ; 
 int /*<<< orphan*/  FUNC0 (struct request*,int /*<<< orphan*/ ) ; 
 struct request* FUNC1 (struct request_queue*) ; 
 struct mspro_block_data* FUNC2 (struct memstick_dev*) ; 
 scalar_t__ FUNC3 (struct memstick_dev*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct request_queue *q)
{
	struct memstick_dev *card = q->queuedata;
	struct mspro_block_data *msb = FUNC2(card);
	struct request *req = NULL;

	if (msb->has_request)
		return;

	if (msb->eject) {
		while ((req = FUNC1(q)) != NULL)
			FUNC0(req, -ENODEV);

		return;
	}

	msb->has_request = 1;
	if (FUNC3(card, 0))
		msb->has_request = 0;
}