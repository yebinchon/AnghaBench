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
struct pstore {int /*<<< orphan*/  area; int /*<<< orphan*/  current_area; } ;
typedef  int /*<<< orphan*/  chunk_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pstore*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct pstore*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct pstore *ps, int rw)
{
	int r;
	chunk_t chunk;

	chunk = FUNC0(ps, ps->current_area);

	r = FUNC1(ps, ps->area, chunk, rw, 0);
	if (r)
		return r;

	return 0;
}