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
typedef  int u32 ;
struct nouveau_subdev {char const* name; int /*<<< orphan*/  mmio; int /*<<< orphan*/  debug; int /*<<< orphan*/  mutex; } ;
struct nouveau_oclass {int /*<<< orphan*/  lock_class_key; } ;
struct nouveau_object {int dummy; } ;
struct nouveau_device {void** subdev; int /*<<< orphan*/  dbgopt; } ;
struct TYPE_2__ {int /*<<< orphan*/  mmio; } ;

/* Variables and functions */
 int NV_SUBDEV_CLASS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*) ; 
 int FUNC2 (struct nouveau_object*,struct nouveau_object*,struct nouveau_oclass*,int,int,void**) ; 
 struct nouveau_device* FUNC3 (struct nouveau_object*) ; 
 int FUNC4 (struct nouveau_subdev*) ; 
 TYPE_1__* FUNC5 (struct nouveau_device*) ; 

int
FUNC6(struct nouveau_object *parent,
		       struct nouveau_object *engine,
		       struct nouveau_oclass *oclass, u32 pclass,
		       const char *subname, const char *sysname,
		       int size, void **pobject)
{
	struct nouveau_subdev *subdev;
	int ret;

	ret = FUNC2(parent, engine, oclass, pclass |
				     NV_SUBDEV_CLASS, size, pobject);
	subdev = *pobject;
	if (ret)
		return ret;

	FUNC0(&subdev->mutex, subname, &oclass->lock_class_key);
	subdev->name = subname;

	if (parent) {
		struct nouveau_device *device = FUNC3(parent);
		int subidx = FUNC4(subdev) & 0xff;

		subdev->debug = FUNC1(device->dbgopt, subname);
		subdev->mmio  = FUNC5(device)->mmio;
		device->subdev[subidx] = *pobject;
	}

	return 0;
}