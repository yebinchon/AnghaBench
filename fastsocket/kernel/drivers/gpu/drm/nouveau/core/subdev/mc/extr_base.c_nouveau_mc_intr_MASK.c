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
typedef  int u32 ;
struct nouveau_subdev {int /*<<< orphan*/  (* intr ) (struct nouveau_subdev*) ;} ;
struct nouveau_mc_intr {int stat; int /*<<< orphan*/  unit; } ;
struct nouveau_mc {struct nouveau_mc_intr* intr_map; } ;

/* Variables and functions */
 struct nouveau_mc* FUNC0 (struct nouveau_subdev*) ; 
 struct nouveau_subdev* FUNC1 (struct nouveau_subdev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct nouveau_mc*,char*,int) ; 
 int FUNC3 (struct nouveau_mc*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct nouveau_subdev*) ; 

void
FUNC5(struct nouveau_subdev *subdev)
{
	struct nouveau_mc *pmc = FUNC0(subdev);
	const struct nouveau_mc_intr *map = pmc->intr_map;
	struct nouveau_subdev *unit;
	u32 stat, intr;

	intr = stat = FUNC3(pmc, 0x000100);
	while (stat && map->stat) {
		if (stat & map->stat) {
			unit = FUNC1(subdev, map->unit);
			if (unit && unit->intr)
				unit->intr(unit);
			intr &= ~map->stat;
		}
		map++;
	}

	if (intr) {
		FUNC2(pmc, "unknown intr 0x%08x\n", stat);
	}
}