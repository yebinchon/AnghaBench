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
struct nouveau_object {int dummy; } ;
struct nouveau_devobj {int created; struct nouveau_object** subdev; int /*<<< orphan*/  base; } ;

/* Variables and functions */
 int NVDEV_SUBDEV_NR ; 
 int /*<<< orphan*/  NV_ENGINE_CLASS ; 
 int /*<<< orphan*/  FUNC0 (struct nouveau_object*,int) ; 
 int FUNC1 (struct nouveau_object*) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct nouveau_object*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(struct nouveau_object *object)
{
	struct nouveau_devobj *devobj = (void *)object;
	struct nouveau_object *subdev;
	int ret, i;

	ret = FUNC2(&devobj->base);
	if (ret)
		return ret;

	for (i = 0; devobj->created && i < NVDEV_SUBDEV_NR; i++) {
		if ((subdev = devobj->subdev[i])) {
			if (!FUNC3(subdev, NV_ENGINE_CLASS)) {
				ret = FUNC1(subdev);
				if (ret)
					goto fail;
			}
		}
	}

	devobj->created = true;
	return 0;

fail:
	for (--i; i >= 0; i--) {
		if ((subdev = devobj->subdev[i])) {
			if (!FUNC3(subdev, NV_ENGINE_CLASS))
				FUNC0(subdev, false);
		}
	}

	return ret;
}