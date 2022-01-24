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
struct TYPE_3__ {int pgnum; } ;
struct nandsim {TYPE_2__* pages; int /*<<< orphan*/  nand_pages_slab; TYPE_1__ geom; scalar_t__ cfile; TYPE_2__* pages_written; int /*<<< orphan*/  file_buf; } ;
struct TYPE_4__ {scalar_t__ byte; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC5(struct nandsim *ns)
{
	int i;

	if (ns->cfile) {
		FUNC1(ns->file_buf);
		FUNC4(ns->pages_written);
		FUNC0(ns->cfile, NULL);
		return;
	}

	if (ns->pages) {
		for (i = 0; i < ns->geom.pgnum; i++) {
			if (ns->pages[i].byte)
				FUNC3(ns->nand_pages_slab,
						ns->pages[i].byte);
		}
		FUNC2(ns->nand_pages_slab);
		FUNC4(ns->pages);
	}
}