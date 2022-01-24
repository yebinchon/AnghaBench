#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct nv50_disp_priv {int dummy; } ;
struct nouveau_oclass {int dummy; } ;
struct nouveau_object {int /*<<< orphan*/  refcount; } ;
struct nouveau_engctx {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  contexts; } ;
struct TYPE_3__ {int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  NVOBJ_FLAG_HEAP ; 
 scalar_t__ NV_DEVICE_CLASS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct nouveau_object*,struct nouveau_object*,struct nouveau_oclass*,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ,struct nouveau_engctx**) ; 
 TYPE_2__* FUNC5 (struct nv50_disp_priv*) ; 
 scalar_t__ FUNC6 (struct nouveau_object*) ; 
 struct nouveau_object* FUNC7 (struct nouveau_engctx*) ; 
 TYPE_1__* FUNC8 (struct nv50_disp_priv*) ; 

__attribute__((used)) static int
FUNC9(struct nouveau_object *parent,
		    struct nouveau_object *engine,
		    struct nouveau_oclass *oclass, void *data, u32 size,
		    struct nouveau_object **pobject)
{
	struct nv50_disp_priv *priv = (void *)engine;
	struct nouveau_engctx *ectx;
	int ret = -EBUSY;

	/* no context needed for channel objects... */
	if (FUNC6(parent) != NV_DEVICE_CLASS) {
		FUNC0(&parent->refcount);
		*pobject = parent;
		return 0;
	}

	/* allocate display hardware to client */
	FUNC2(&FUNC8(priv)->mutex);
	if (FUNC1(&FUNC5(priv)->contexts)) {
		ret = FUNC4(parent, engine, oclass, NULL,
					    0x10000, 0x10000,
					    NVOBJ_FLAG_HEAP, &ectx);
		*pobject = FUNC7(ectx);
	}
	FUNC3(&FUNC8(priv)->mutex);
	return ret;
}