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
struct nouveau_device {int /*<<< orphan*/  pdev; } ;
struct nouveau_bar {int /*<<< orphan*/  iomem; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct nouveau_object*,struct nouveau_object*,struct nouveau_oclass*,int /*<<< orphan*/ ,char*,char*,int,void**) ; 
 struct nouveau_device* FUNC2 (struct nouveau_object*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 

int
FUNC5(struct nouveau_object *parent,
		    struct nouveau_object *engine,
		    struct nouveau_oclass *oclass, int length, void **pobject)
{
	struct nouveau_device *device = FUNC2(parent);
	struct nouveau_bar *bar;
	int ret;

	ret = FUNC1(parent, engine, oclass, 0, "BARCTL",
				     "bar", length, pobject);
	bar = *pobject;
	if (ret)
		return ret;

	bar->iomem = FUNC0(FUNC4(device->pdev, 3),
			     FUNC3(device->pdev, 3));
	return 0;
}