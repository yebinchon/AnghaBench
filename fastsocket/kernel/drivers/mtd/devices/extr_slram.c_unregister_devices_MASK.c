#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  start; } ;
typedef  TYPE_1__ slram_priv_t ;
struct TYPE_7__ {struct TYPE_7__* mtdinfo; struct TYPE_7__* priv; struct TYPE_7__* next; } ;
typedef  TYPE_2__ slram_mtd_list_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 TYPE_2__* slram_mtdlist ; 

__attribute__((used)) static void FUNC3(void)
{
	slram_mtd_list_t *nextitem;

	while (slram_mtdlist) {
		nextitem = slram_mtdlist->next;
		FUNC0(slram_mtdlist->mtdinfo);
		FUNC1(((slram_priv_t *)slram_mtdlist->mtdinfo->priv)->start);
		FUNC2(slram_mtdlist->mtdinfo->priv);
		FUNC2(slram_mtdlist->mtdinfo);
		FUNC2(slram_mtdlist);
		slram_mtdlist = nextitem;
	}
}