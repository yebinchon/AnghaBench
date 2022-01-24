#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct nv50_fifo_base {int /*<<< orphan*/  pgd; int /*<<< orphan*/  vm; int /*<<< orphan*/  eng; int /*<<< orphan*/  ramfc; } ;
struct nouveau_oclass {int dummy; } ;
struct nouveau_object {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  vm; } ;

/* Variables and functions */
 int /*<<< orphan*/  NVOBJ_FLAG_HEAP ; 
 int /*<<< orphan*/  NVOBJ_FLAG_ZERO_ALLOC ; 
 TYPE_1__* FUNC0 (struct nouveau_object*) ; 
 int FUNC1 (struct nouveau_object*,struct nouveau_object*,struct nouveau_oclass*,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ,struct nv50_fifo_base**) ; 
 int FUNC2 (struct nouveau_object*,struct nouveau_object*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct nouveau_object* FUNC4 (struct nv50_fifo_base*) ; 

__attribute__((used)) static int
FUNC5(struct nouveau_object *parent,
		       struct nouveau_object *engine,
		       struct nouveau_oclass *oclass, void *data, u32 size,
		       struct nouveau_object **pobject)
{
	struct nv50_fifo_base *base;
	int ret;

	ret = FUNC1(parent, engine, oclass, NULL, 0x10000,
				          0x1000, NVOBJ_FLAG_HEAP, &base);
	*pobject = FUNC4(base);
	if (ret)
		return ret;

	ret = FUNC2(parent, FUNC4(base), 0x0200, 0x1000,
				 NVOBJ_FLAG_ZERO_ALLOC, &base->ramfc);
	if (ret)
		return ret;

	ret = FUNC2(parent, FUNC4(base), 0x1200, 0,
				 NVOBJ_FLAG_ZERO_ALLOC, &base->eng);
	if (ret)
		return ret;

	ret = FUNC2(parent, FUNC4(base), 0x4000, 0, 0,
				&base->pgd);
	if (ret)
		return ret;

	ret = FUNC3(FUNC0(parent)->vm, &base->vm, base->pgd);
	if (ret)
		return ret;

	return 0;
}