#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct nve0_fifo_base {TYPE_1__* pgd; int /*<<< orphan*/  vm; } ;
struct nouveau_oclass {int dummy; } ;
struct nouveau_object {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  vm; } ;
struct TYPE_4__ {int /*<<< orphan*/  addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  NVOBJ_FLAG_ZERO_ALLOC ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC1 (struct nouveau_object*) ; 
 int FUNC2 (struct nouveau_object*,struct nouveau_object*,struct nouveau_oclass*,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ,struct nve0_fifo_base**) ; 
 int FUNC3 (struct nouveau_object*,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ,TYPE_1__**) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*) ; 
 struct nouveau_object* FUNC5 (struct nve0_fifo_base*) ; 
 int /*<<< orphan*/  FUNC6 (struct nve0_fifo_base*,int,int) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC8(struct nouveau_object *parent,
		    struct nouveau_object *engine,
		    struct nouveau_oclass *oclass, void *data, u32 size,
		    struct nouveau_object **pobject)
{
	struct nve0_fifo_base *base;
	int ret;

	ret = FUNC2(parent, engine, oclass, NULL, 0x1000,
				          0x1000, NVOBJ_FLAG_ZERO_ALLOC, &base);
	*pobject = FUNC5(base);
	if (ret)
		return ret;

	ret = FUNC3(parent, NULL, 0x10000, 0x1000, 0, &base->pgd);
	if (ret)
		return ret;

	FUNC6(base, 0x0200, FUNC0(base->pgd->addr));
	FUNC6(base, 0x0204, FUNC7(base->pgd->addr));
	FUNC6(base, 0x0208, 0xffffffff);
	FUNC6(base, 0x020c, 0x000000ff);

	ret = FUNC4(FUNC1(parent)->vm, &base->vm, base->pgd);
	if (ret)
		return ret;

	return 0;
}