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
struct slabinfo {scalar_t__ alias; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct slabinfo*) ; 
 int /*<<< orphan*/  FUNC1 (struct slabinfo*) ; 
 scalar_t__ set_debug ; 
 scalar_t__ show_numa ; 
 scalar_t__ show_ops ; 
 scalar_t__ show_report ; 
 scalar_t__ show_slab ; 
 scalar_t__ show_track ; 
 int /*<<< orphan*/  FUNC2 (struct slabinfo*) ; 
 scalar_t__ shrink ; 
 int /*<<< orphan*/  FUNC3 (struct slabinfo*) ; 
 int /*<<< orphan*/  FUNC4 (struct slabinfo*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct slabinfo*) ; 
 int /*<<< orphan*/  FUNC6 (struct slabinfo*) ; 
 int /*<<< orphan*/  FUNC7 (struct slabinfo*) ; 
 struct slabinfo* slabinfo ; 
 int slabs ; 
 scalar_t__ validate ; 

__attribute__((used)) static void FUNC8(void)
{
	struct slabinfo *slab;

	for (slab = slabinfo; slab < slabinfo + slabs; slab++) {

		if (slab->alias)
			continue;


		if (show_numa)
			FUNC4(slab, 0);
		else if (show_track)
			FUNC2(slab);
		else if (validate)
			FUNC6(slab);
		else if (shrink)
			FUNC5(slab);
		else if (set_debug)
			FUNC3(slab);
		else if (show_ops)
			FUNC0(slab);
		else if (show_slab)
			FUNC7(slab);
		else if (show_report)
			FUNC1(slab);
	}
}