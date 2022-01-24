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
struct nouveau_oclass {int dummy; } ;
struct nouveau_object {int dummy; } ;
struct nouveau_engctx {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  NVOBJ_FLAG_ZERO_ALLOC ; 
 int FUNC0 (struct nouveau_object*,struct nouveau_object*,struct nouveau_oclass*,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ,struct nouveau_engctx**) ; 
 struct nouveau_object* FUNC1 (struct nouveau_engctx*) ; 

int
FUNC2(struct nouveau_object *parent,
		     struct nouveau_object *engine,
		     struct nouveau_oclass *oclass, void *data, u32 size,
		     struct nouveau_object **pobject)
{
	struct nouveau_engctx *engctx;
	int ret;

	ret = FUNC0(parent, engine, oclass, NULL, 256, 256,
				    NVOBJ_FLAG_ZERO_ALLOC, &engctx);
	*pobject = FUNC1(engctx);
	return ret;
}