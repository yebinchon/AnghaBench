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
struct thin_c {int /*<<< orphan*/  pool_dev; } ;
struct dm_bio_prison_cell {int dummy; } ;
struct bio {int dummy; } ;
typedef  int /*<<< orphan*/  dm_block_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct thin_c*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct dm_bio_prison_cell*,struct bio*) ; 

__attribute__((used)) static void FUNC1(struct thin_c *tc, dm_block_t virt_block,
				   dm_block_t data_origin, dm_block_t data_dest,
				   struct dm_bio_prison_cell *cell, struct bio *bio)
{
	FUNC0(tc, virt_block, tc->pool_dev,
		      data_origin, data_dest, cell, bio);
}