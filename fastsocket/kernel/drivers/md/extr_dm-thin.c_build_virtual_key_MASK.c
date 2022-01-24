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
struct dm_thin_device {int dummy; } ;
struct dm_cell_key {int virtual; int /*<<< orphan*/  block; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  dm_block_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dm_thin_device*) ; 

__attribute__((used)) static void FUNC1(struct dm_thin_device *td, dm_block_t b,
			      struct dm_cell_key *key)
{
	key->virtual = 1;
	key->dev = FUNC0(td);
	key->block = b;
}