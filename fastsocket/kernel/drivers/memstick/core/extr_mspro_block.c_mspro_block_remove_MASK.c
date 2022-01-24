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
struct mspro_block_data {int eject; int /*<<< orphan*/  disk; int /*<<< orphan*/  attr_group; int /*<<< orphan*/ * queue; int /*<<< orphan*/  q_lock; } ;
struct TYPE_2__ {int /*<<< orphan*/  kobj; } ;
struct memstick_dev {TYPE_1__ dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*) ; 
 struct mspro_block_data* FUNC4 (struct memstick_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct memstick_dev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct mspro_block_data*) ; 
 int /*<<< orphan*/  mspro_block_disk_lock ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC13(struct memstick_dev *card)
{
	struct mspro_block_data *msb = FUNC4(card);
	unsigned long flags;

	FUNC2(msb->disk);
	FUNC3(&card->dev, "mspro block remove\n");
	FUNC10(&msb->q_lock, flags);
	msb->eject = 1;
	FUNC1(msb->queue);
	FUNC11(&msb->q_lock, flags);

	FUNC0(msb->queue);
	msb->queue = NULL;

	FUNC12(&card->dev.kobj, &msb->attr_group);

	FUNC8(&mspro_block_disk_lock);
	FUNC6(msb);
	FUNC9(&mspro_block_disk_lock);

	FUNC7(msb->disk);
	FUNC5(card, NULL);
}