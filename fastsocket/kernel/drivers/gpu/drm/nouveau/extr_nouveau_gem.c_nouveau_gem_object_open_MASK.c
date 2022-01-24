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
struct nouveau_vma {int /*<<< orphan*/  refcount; } ;
struct TYPE_2__ {int /*<<< orphan*/  vm; } ;
struct nouveau_cli {TYPE_1__ base; } ;
struct nouveau_bo {int /*<<< orphan*/  bo; } ;
struct drm_gem_object {int dummy; } ;
struct drm_file {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct nouveau_vma*) ; 
 struct nouveau_vma* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct nouveau_bo*,int /*<<< orphan*/ ,struct nouveau_vma*) ; 
 struct nouveau_vma* FUNC3 (struct nouveau_bo*,int /*<<< orphan*/ ) ; 
 struct nouveau_cli* FUNC4 (struct drm_file*) ; 
 struct nouveau_bo* FUNC5 (struct drm_gem_object*) ; 
 int FUNC6 (int /*<<< orphan*/ *,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

int
FUNC8(struct drm_gem_object *gem, struct drm_file *file_priv)
{
	struct nouveau_cli *cli = FUNC4(file_priv);
	struct nouveau_bo *nvbo = FUNC5(gem);
	struct nouveau_vma *vma;
	int ret;

	if (!cli->base.vm)
		return 0;

	ret = FUNC6(&nvbo->bo, false, false, false, 0);
	if (ret)
		return ret;

	vma = FUNC3(nvbo, cli->base.vm);
	if (!vma) {
		vma = FUNC1(sizeof(*vma), GFP_KERNEL);
		if (!vma) {
			ret = -ENOMEM;
			goto out;
		}

		ret = FUNC2(nvbo, cli->base.vm, vma);
		if (ret) {
			FUNC0(vma);
			goto out;
		}
	} else {
		vma->refcount++;
	}

out:
	FUNC7(&nvbo->bo);
	return ret;
}