#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
union ns_mem {int /*<<< orphan*/ * byte; } ;
struct TYPE_4__ {int row; } ;
struct TYPE_3__ {int pgsec; } ;
struct nandsim {int /*<<< orphan*/  nand_pages_slab; TYPE_2__ regs; TYPE_1__ geom; scalar_t__* pages_written; scalar_t__ cfile; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 union ns_mem* FUNC1 (struct nandsim*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct nandsim *ns)
{
	union ns_mem *mypage;
	int i;

	if (ns->cfile) {
		for (i = 0; i < ns->geom.pgsec; i++)
			if (ns->pages_written[ns->regs.row + i]) {
				FUNC0("erase_sector: freeing page %d\n", ns->regs.row + i);
				ns->pages_written[ns->regs.row + i] = 0;
			}
		return;
	}

	mypage = FUNC1(ns);
	for (i = 0; i < ns->geom.pgsec; i++) {
		if (mypage->byte != NULL) {
			FUNC0("erase_sector: freeing page %d\n", ns->regs.row+i);
			FUNC2(ns->nand_pages_slab, mypage->byte);
			mypage->byte = NULL;
		}
		mypage++;
	}
}