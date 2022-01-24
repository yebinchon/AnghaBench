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
struct map_pci_info {scalar_t__ base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,scalar_t__) ; 

__attribute__((used)) static unsigned long
FUNC1(struct map_pci_info *map, unsigned long ofs)
{
	unsigned long page_addr = ofs & 0x00400000;

	/*
	 * This mundges the flash location so we avoid
	 * the first 80 bytes (they appear to read nonsense).
	 */
	if (page_addr) {
		FUNC0(0x00000008, map->base + 0x1558);
		FUNC0(0x00000000, map->base + 0x1550);
	} else {
		FUNC0(0x00000007, map->base + 0x1558);
		FUNC0(0x00800000, map->base + 0x1550);
		ofs += 0x00800000;
	}

	return ofs;
}