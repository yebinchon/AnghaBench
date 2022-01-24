#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {struct TYPE_4__** top; struct TYPE_4__** dir; } ;

/* Variables and functions */
 int EHCA_MAP_ENTRIES ; 
 TYPE_1__* ehca_bmap ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

void FUNC2(void)
{
	int top, dir;

	if (!ehca_bmap)
		return;

	for (top = 0; top < EHCA_MAP_ENTRIES; top++) {
		if (!FUNC0(ehca_bmap->top[top]))
			continue;
		for (dir = 0; dir < EHCA_MAP_ENTRIES; dir++) {
			if (!FUNC0(ehca_bmap->top[top]->dir[dir]))
				continue;

			FUNC1(ehca_bmap->top[top]->dir[dir]);
		}

		FUNC1(ehca_bmap->top[top]);
	}

	FUNC1(ehca_bmap);
	ehca_bmap = NULL;
}