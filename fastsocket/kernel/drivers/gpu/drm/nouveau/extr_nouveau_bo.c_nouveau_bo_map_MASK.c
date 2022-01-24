#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  num_pages; } ;
struct TYPE_6__ {TYPE_1__ mem; } ;
struct nouveau_bo {TYPE_2__ bo; int /*<<< orphan*/  kmap; } ;

/* Variables and functions */
 int FUNC0 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (TYPE_2__*,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 

int
FUNC3(struct nouveau_bo *nvbo)
{
	int ret;

	ret = FUNC1(&nvbo->bo, false, false, false, 0);
	if (ret)
		return ret;

	ret = FUNC0(&nvbo->bo, 0, nvbo->bo.mem.num_pages, &nvbo->kmap);
	FUNC2(&nvbo->bo);
	return ret;
}