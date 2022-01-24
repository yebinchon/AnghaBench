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
struct mmc_card {int dummy; } ;
struct mmc_blk_data {int /*<<< orphan*/  queue; int /*<<< orphan*/  disk; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mmc_blk_data*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct mmc_blk_data* FUNC3 (struct mmc_card*) ; 
 int /*<<< orphan*/  FUNC4 (struct mmc_card*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct mmc_card *card)
{
	struct mmc_blk_data *md = FUNC3(card);

	if (md) {
		/* Stop new requests from getting into the queue */
		FUNC0(md->disk);

		/* Then flush out any already in there */
		FUNC2(&md->queue);

		FUNC1(md);
	}
	FUNC4(card, NULL);
}