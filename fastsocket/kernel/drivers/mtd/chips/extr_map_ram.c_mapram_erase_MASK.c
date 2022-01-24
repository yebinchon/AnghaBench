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
struct mtd_info {struct map_info* priv; } ;
struct map_info {int dummy; } ;
struct erase_info {unsigned long len; int /*<<< orphan*/  state; scalar_t__ addr; } ;
typedef  int /*<<< orphan*/  map_word ;

/* Variables and functions */
 int /*<<< orphan*/  MTD_ERASE_DONE ; 
 scalar_t__ FUNC0 (struct map_info*) ; 
 int /*<<< orphan*/  FUNC1 (struct map_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct map_info*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct erase_info*) ; 

__attribute__((used)) static int FUNC4 (struct mtd_info *mtd, struct erase_info *instr)
{
	/* Yeah, it's inefficient. Who cares? It's faster than a _real_
	   flash erase. */
	struct map_info *map = mtd->priv;
	map_word allff;
	unsigned long i;

	allff = FUNC1(map);

	for (i=0; i<instr->len; i += FUNC0(map))
		FUNC2(map, allff, instr->addr + i);

	instr->state = MTD_ERASE_DONE;

	FUNC3(instr);

	return 0;
}