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
struct nouveau_ramht {int /*<<< orphan*/  bits; } ;
struct nouveau_object {struct nouveau_object* engine; } ;
struct TYPE_2__ {int size; } ;

/* Variables and functions */
 int /*<<< orphan*/  NVOBJ_FLAG_ZERO_ALLOC ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct nouveau_object*,struct nouveau_object*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct nouveau_object*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct nouveau_ramht**) ; 
 int /*<<< orphan*/  nouveau_ramht_oclass ; 
 TYPE_1__* FUNC2 (struct nouveau_ramht*) ; 

int
FUNC3(struct nouveau_object *parent, struct nouveau_object *pargpu,
		  u32 size, u32 align, struct nouveau_ramht **pramht)
{
	struct nouveau_ramht *ramht;
	int ret;

	ret = FUNC1(parent, parent->engine ?
				    parent->engine : parent, /* <nv50 ramht */
				    &nouveau_ramht_oclass, 0, pargpu, size,
				    align, NVOBJ_FLAG_ZERO_ALLOC, &ramht);
	*pramht = ramht;
	if (ret)
		return ret;

	ramht->bits = FUNC0(FUNC2(ramht)->size >> 3);
	return 0;
}