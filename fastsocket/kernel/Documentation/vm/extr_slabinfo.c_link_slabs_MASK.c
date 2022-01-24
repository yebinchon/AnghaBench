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
struct slabinfo {int /*<<< orphan*/  refs; int /*<<< orphan*/  name; } ;
struct aliasinfo {int /*<<< orphan*/  ref; struct slabinfo* slab; } ;

/* Variables and functions */
 int aliases ; 
 struct aliasinfo* aliasinfo ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 struct slabinfo* slabinfo ; 
 int slabs ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(void)
{
	struct aliasinfo *a;
	struct slabinfo *s;

	for (a = aliasinfo; a < aliasinfo + aliases; a++) {

		for (s = slabinfo; s < slabinfo + slabs; s++)
			if (FUNC1(a->ref, s->name) == 0) {
				a->slab = s;
				s->refs++;
				break;
			}
		if (s == slabinfo + slabs)
			FUNC0("Unresolved alias %s\n", a->ref);
	}
}