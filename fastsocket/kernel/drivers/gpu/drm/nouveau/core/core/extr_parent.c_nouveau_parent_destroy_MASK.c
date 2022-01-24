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
struct nouveau_sclass {struct nouveau_sclass* sclass; } ;
struct nouveau_parent {int /*<<< orphan*/  base; struct nouveau_sclass* sclass; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nouveau_sclass*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void
FUNC2(struct nouveau_parent *parent)
{
	struct nouveau_sclass *sclass;

	while ((sclass = parent->sclass)) {
		parent->sclass = sclass->sclass;
		FUNC0(sclass);
	}

	FUNC1(&parent->base);
}