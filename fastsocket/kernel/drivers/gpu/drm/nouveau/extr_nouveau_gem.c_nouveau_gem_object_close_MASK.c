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
struct nouveau_vma {scalar_t__ refcount; } ;
struct TYPE_2__ {int /*<<< orphan*/  vm; } ;
struct nouveau_cli {TYPE_1__ base; } ;
struct nouveau_bo {int /*<<< orphan*/  bo; } ;
struct drm_gem_object {int dummy; } ;
struct drm_file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nouveau_vma*) ; 
 int /*<<< orphan*/  FUNC1 (struct nouveau_bo*,struct nouveau_vma*) ; 
 struct nouveau_vma* FUNC2 (struct nouveau_bo*,int /*<<< orphan*/ ) ; 
 struct nouveau_cli* FUNC3 (struct drm_file*) ; 
 struct nouveau_bo* FUNC4 (struct drm_gem_object*) ; 
 int FUNC5 (int /*<<< orphan*/ *,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void
FUNC7(struct drm_gem_object *gem, struct drm_file *file_priv)
{
	struct nouveau_cli *cli = FUNC3(file_priv);
	struct nouveau_bo *nvbo = FUNC4(gem);
	struct nouveau_vma *vma;
	int ret;

	if (!cli->base.vm)
		return;

	ret = FUNC5(&nvbo->bo, false, false, false, 0);
	if (ret)
		return;

	vma = FUNC2(nvbo, cli->base.vm);
	if (vma) {
		if (--vma->refcount == 0) {
			FUNC1(nvbo, vma);
			FUNC0(vma);
		}
	}
	FUNC6(&nvbo->bo);
}