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
struct mspro_block_data {int /*<<< orphan*/  q_lock; int /*<<< orphan*/  queue; int /*<<< orphan*/  has_request; } ;
struct memstick_dev {int /*<<< orphan*/  mrq_complete; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct mspro_block_data* FUNC1 (struct memstick_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct memstick_dev *card)
{
	struct mspro_block_data *msb = FUNC1(card);
	int rc = 0;
	unsigned long flags;

	while (1) {
		FUNC2(&msb->q_lock, flags);
		if (!msb->has_request) {
			FUNC0(msb->queue);
			rc = 1;
		}
		FUNC3(&msb->q_lock, flags);

		if (rc)
			break;

		FUNC4(&card->mrq_complete);
	}
}