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
typedef  int /*<<< orphan*/  u32 ;
struct nv04_fifo_base {int dummy; } ;
struct nouveau_oclass {int dummy; } ;
struct nouveau_object {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  NVOBJ_FLAG_HEAP ; 
 int FUNC0 (struct nouveau_object*,struct nouveau_object*,struct nouveau_oclass*,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ,struct nv04_fifo_base**) ; 
 struct nouveau_object* FUNC1 (struct nv04_fifo_base*) ; 

int
FUNC2(struct nouveau_object *parent,
		       struct nouveau_object *engine,
		       struct nouveau_oclass *oclass, void *data, u32 size,
		       struct nouveau_object **pobject)
{
	struct nv04_fifo_base *base;
	int ret;

	ret = FUNC0(parent, engine, oclass, NULL, 0x1000,
				          0x1000, NVOBJ_FLAG_HEAP, &base);
	*pobject = FUNC1(base);
	if (ret)
		return ret;

	return 0;
}