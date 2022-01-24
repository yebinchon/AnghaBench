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
struct mtd_info {int size; int writesize; int erasesize; int /*<<< orphan*/  flags; int /*<<< orphan*/  sync; int /*<<< orphan*/  write; int /*<<< orphan*/  read; int /*<<< orphan*/  get_unmapped_area; int /*<<< orphan*/  erase; int /*<<< orphan*/  type; int /*<<< orphan*/  name; struct map_info* priv; } ;
struct map_info {int size; int /*<<< orphan*/  name; int /*<<< orphan*/ * fldrv; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MTD_CAP_RAM ; 
 int /*<<< orphan*/  MTD_RAM ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct mtd_info* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct map_info*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct map_info*,int,int) ; 
 int /*<<< orphan*/  mapram_chipdrv ; 
 int /*<<< orphan*/  mapram_erase ; 
 int /*<<< orphan*/  mapram_nop ; 
 int /*<<< orphan*/  mapram_read ; 
 int /*<<< orphan*/  mapram_unmapped_area ; 
 int /*<<< orphan*/  mapram_write ; 

__attribute__((used)) static struct mtd_info *FUNC4(struct map_info *map)
{
	struct mtd_info *mtd;

	/* Check the first byte is RAM */
#if 0
	map_write8(map, 0x55, 0);
	if (map_read8(map, 0) != 0x55)
		return NULL;

	map_write8(map, 0xAA, 0);
	if (map_read8(map, 0) != 0xAA)
		return NULL;

	/* Check the last byte is RAM */
	map_write8(map, 0x55, map->size-1);
	if (map_read8(map, map->size-1) != 0x55)
		return NULL;

	map_write8(map, 0xAA, map->size-1);
	if (map_read8(map, map->size-1) != 0xAA)
		return NULL;
#endif
	/* OK. It seems to be RAM. */

	mtd = FUNC1(sizeof(*mtd), GFP_KERNEL);
	if (!mtd)
		return NULL;

	map->fldrv = &mapram_chipdrv;
	mtd->priv = map;
	mtd->name = map->name;
	mtd->type = MTD_RAM;
	mtd->size = map->size;
	mtd->erase = mapram_erase;
	mtd->get_unmapped_area = mapram_unmapped_area;
	mtd->read = mapram_read;
	mtd->write = mapram_write;
	mtd->sync = mapram_nop;
	mtd->flags = MTD_CAP_RAM;
	mtd->writesize = 1;

	mtd->erasesize = PAGE_SIZE;
 	while(mtd->size & (mtd->erasesize - 1))
		mtd->erasesize >>= 1;

	FUNC0(THIS_MODULE);
	return mtd;
}