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
struct mspro_block_data {int /*<<< orphan*/  q_lock; int /*<<< orphan*/  queue; } ;
struct memstick_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct mspro_block_data* FUNC1 (struct memstick_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC4(struct memstick_dev *card)
{
	struct mspro_block_data *msb = FUNC1(card);
	unsigned long flags;

	FUNC2(&msb->q_lock, flags);
	FUNC0(msb->queue);
	FUNC3(&msb->q_lock, flags);
}