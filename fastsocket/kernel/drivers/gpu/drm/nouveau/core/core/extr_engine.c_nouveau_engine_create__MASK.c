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
struct nouveau_oclass {int dummy; } ;
struct nouveau_object {int dummy; } ;
struct nouveau_engine {int /*<<< orphan*/  lock; int /*<<< orphan*/  contexts; } ;
struct nouveau_device {int /*<<< orphan*/  cfgopt; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  NV_ENGINE_CLASS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*,int) ; 
 int FUNC2 (struct nouveau_object*,struct nouveau_object*,struct nouveau_oclass*,int /*<<< orphan*/ ,char const*,char const*,int,void**) ; 
 struct nouveau_device* FUNC3 (struct nouveau_object*) ; 
 int /*<<< orphan*/  FUNC4 (struct nouveau_engine*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int
FUNC6(struct nouveau_object *parent,
		       struct nouveau_object *engobj,
		       struct nouveau_oclass *oclass, bool enable,
		       const char *iname, const char *fname,
		       int length, void **pobject)
{
	struct nouveau_device *device = FUNC3(parent);
	struct nouveau_engine *engine;
	int ret;

	ret = FUNC2(parent, engobj, oclass, NV_ENGINE_CLASS,
				     iname, fname, length, pobject);
	engine = *pobject;
	if (ret)
		return ret;

	if (!FUNC1(device->cfgopt, iname, enable)) {
		if (!enable)
			FUNC4(engine, "disabled, %s=1 to enable\n", iname);
		return -ENODEV;
	}

	FUNC0(&engine->contexts);
	FUNC5(&engine->lock);
	return 0;
}