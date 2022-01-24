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
struct nouveau_devinit {int /*<<< orphan*/  post; } ;
struct nouveau_device {int /*<<< orphan*/  cfgopt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (struct nouveau_object*,struct nouveau_object*,struct nouveau_oclass*,int /*<<< orphan*/ ,char*,char*,int,void**) ; 
 struct nouveau_device* FUNC2 (struct nouveau_object*) ; 

int
FUNC3(struct nouveau_object *parent,
			struct nouveau_object *engine,
			struct nouveau_oclass *oclass,
			int size, void **pobject)
{
	struct nouveau_device *device = FUNC2(parent);
	struct nouveau_devinit *devinit;
	int ret;

	ret = FUNC1(parent, engine, oclass, 0, "DEVINIT",
				     "init", size, pobject);
	devinit = *pobject;
	if (ret)
		return ret;

	devinit->post = FUNC0(device->cfgopt, "NvForcePost", false);
	return 0;
}