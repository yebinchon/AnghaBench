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
struct mspro_block_data {int /*<<< orphan*/  attr_group; int /*<<< orphan*/  q_lock; struct memstick_dev* card; } ;
struct TYPE_2__ {int /*<<< orphan*/  kobj; } ;
struct memstick_dev {TYPE_1__ dev; int /*<<< orphan*/  start; int /*<<< orphan*/  stop; int /*<<< orphan*/  check; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct mspro_block_data*) ; 
 struct mspro_block_data* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct memstick_dev*,struct mspro_block_data*) ; 
 int /*<<< orphan*/  mspro_block_check_card ; 
 int /*<<< orphan*/  FUNC3 (struct mspro_block_data*) ; 
 int FUNC4 (struct memstick_dev*) ; 
 int FUNC5 (struct memstick_dev*) ; 
 int /*<<< orphan*/  mspro_block_start ; 
 int /*<<< orphan*/  mspro_block_stop ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct memstick_dev *card)
{
	struct mspro_block_data *msb;
	int rc = 0;

	msb = FUNC1(sizeof(struct mspro_block_data), GFP_KERNEL);
	if (!msb)
		return -ENOMEM;
	FUNC2(card, msb);
	msb->card = card;
	FUNC6(&msb->q_lock);

	rc = FUNC4(card);

	if (rc)
		goto out_free;

	rc = FUNC7(&card->dev.kobj, &msb->attr_group);
	if (rc)
		goto out_free;

	rc = FUNC5(card);
	if (!rc) {
		card->check = mspro_block_check_card;
		card->stop = mspro_block_stop;
		card->start = mspro_block_start;
		return 0;
	}

	FUNC8(&card->dev.kobj, &msb->attr_group);
out_free:
	FUNC2(card, NULL);
	FUNC3(msb);
	FUNC0(msb);
	return rc;
}