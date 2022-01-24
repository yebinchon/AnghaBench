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
struct bio {int /*<<< orphan*/  bi_bdev; scalar_t__ bi_size; struct bio* bi_next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bio*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct bio*) ; 

__attribute__((used)) static void FUNC3(struct bio *return_bi)
{
	struct bio *bi = return_bi;
	while (bi) {

		return_bi = bi->bi_next;
		bi->bi_next = NULL;
		bi->bi_size = 0;
		FUNC2(FUNC0(bi->bi_bdev),
					 bi);
		FUNC1(bi, 0);
		bi = return_bi;
	}
}