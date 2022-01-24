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
typedef  int /*<<< orphan*/  u16 ;
struct nouveau_oclass {int dummy; } ;
struct nouveau_object {int dummy; } ;
struct nouveau_handle {int dummy; } ;
struct TYPE_2__ {struct nouveau_oclass* cclass; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOENT ; 
 int /*<<< orphan*/  NV_PARENT_CLASS ; 
 int FUNC0 (struct nouveau_object*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct nouveau_object*,struct nouveau_handle**) ; 
 int /*<<< orphan*/  FUNC1 (struct nouveau_handle*) ; 
 int FUNC2 (struct nouveau_handle*) ; 
 struct nouveau_object* FUNC3 (struct nouveau_object*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct nouveau_object*,struct nouveau_object*,struct nouveau_oclass*,void*,int /*<<< orphan*/ ,struct nouveau_object**) ; 
 int /*<<< orphan*/  FUNC5 (struct nouveau_object*,int) ; 
 int FUNC6 (struct nouveau_object*) ; 
 int /*<<< orphan*/  FUNC7 (struct nouveau_object*,struct nouveau_object**) ; 
 int FUNC8 (struct nouveau_object*,int /*<<< orphan*/ ,struct nouveau_object**,struct nouveau_oclass**) ; 
 int /*<<< orphan*/  FUNC9 (struct nouveau_object*,char*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC10 (struct nouveau_object*) ; 
 int /*<<< orphan*/  FUNC11 (struct nouveau_object*,char*,...) ; 
 int /*<<< orphan*/  FUNC12 (struct nouveau_object*,int /*<<< orphan*/ ) ; 

int
FUNC13(struct nouveau_object *client, u32 _parent, u32 _handle,
		   u16 _oclass, void *data, u32 size,
		   struct nouveau_object **pobject)
{
	struct nouveau_object *parent = NULL;
	struct nouveau_object *engctx = NULL;
	struct nouveau_object *object = NULL;
	struct nouveau_object *engine;
	struct nouveau_oclass *oclass;
	struct nouveau_handle *handle;
	int ret;

	/* lookup parent object and ensure it *is* a parent */
	parent = FUNC3(client, _parent);
	if (!parent) {
		FUNC11(client, "parent 0x%08x not found\n", _parent);
		return -ENOENT;
	}

	if (!FUNC12(parent, NV_PARENT_CLASS)) {
		FUNC11(parent, "cannot have children\n");
		ret = -EINVAL;
		goto fail_class;
	}

	/* check that parent supports the requested subclass */
	ret = FUNC8(parent, _oclass, &engine, &oclass);
	if (ret) {
		FUNC9(parent, "illegal class 0x%04x\n", _oclass);
		goto fail_class;
	}

	/* make sure engine init has been completed *before* any objects
	 * it controls are created - the constructors may depend on
	 * state calculated at init (ie. default context construction)
	 */
	if (engine) {
		ret = FUNC6(engine);
		if (ret)
			goto fail_class;
	}

	/* if engine requires it, create a context object to insert
	 * between the parent and its children (eg. PGRAPH context)
	 */
	if (engine && FUNC10(engine)->cclass) {
		ret = FUNC4(parent, engine,
					  FUNC10(engine)->cclass,
					  data, size, &engctx);
		if (ret)
			goto fail_engctx;
	} else {
		FUNC7(parent, &engctx);
	}

	/* finally, create new object and bind it to its handle */
	ret = FUNC4(engctx, engine, oclass, data, size, &object);
	*pobject = object;
	if (ret)
		goto fail_ctor;

	ret = FUNC6(object);
	if (ret)
		goto fail_init;

	ret = FUNC0(parent, _parent, _handle, object, &handle);
	if (ret)
		goto fail_handle;

	ret = FUNC2(handle);
	if (ret)
		FUNC1(handle);

fail_handle:
	FUNC5(object, false);
fail_init:
	FUNC7(NULL, &object);
fail_ctor:
	FUNC7(NULL, &engctx);
fail_engctx:
	if (engine)
		FUNC5(engine, false);
fail_class:
	FUNC7(NULL, &parent);
	return ret;
}