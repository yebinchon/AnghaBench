#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct nouveau_fb {int /*<<< orphan*/  (* memtype_valid ) (struct nouveau_fb*,int /*<<< orphan*/ ) ;} ;
struct TYPE_5__ {int /*<<< orphan*/  dev_mapping; } ;
struct TYPE_6__ {TYPE_1__ bdev; } ;
struct nouveau_drm {TYPE_3__* dev; TYPE_2__ ttm; int /*<<< orphan*/  device; } ;
struct nouveau_cli {int dummy; } ;
struct nouveau_bo {int /*<<< orphan*/  gem; } ;
struct TYPE_8__ {int /*<<< orphan*/  handle; int /*<<< orphan*/  tile_flags; int /*<<< orphan*/  tile_mode; int /*<<< orphan*/  domain; int /*<<< orphan*/  size; } ;
struct drm_nouveau_gem_new {TYPE_4__ info; int /*<<< orphan*/  align; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  dev_mapping; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct nouveau_cli*,char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct drm_file*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_file*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct nouveau_cli* FUNC4 (struct drm_file*) ; 
 struct nouveau_drm* FUNC5 (struct drm_device*) ; 
 struct nouveau_fb* FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (struct drm_file*,int /*<<< orphan*/ ,TYPE_4__*) ; 
 int FUNC8 (struct drm_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct nouveau_bo**) ; 
 int /*<<< orphan*/  FUNC9 (struct nouveau_fb*,int /*<<< orphan*/ ) ; 

int
FUNC10(struct drm_device *dev, void *data,
		      struct drm_file *file_priv)
{
	struct nouveau_drm *drm = FUNC5(dev);
	struct nouveau_cli *cli = FUNC4(file_priv);
	struct nouveau_fb *pfb = FUNC6(drm->device);
	struct drm_nouveau_gem_new *req = data;
	struct nouveau_bo *nvbo = NULL;
	int ret = 0;

	drm->ttm.bdev.dev_mapping = drm->dev->dev_mapping;

	if (!pfb->memtype_valid(pfb, req->info.tile_flags)) {
		FUNC0(cli, "bad page flags: 0x%08x\n", req->info.tile_flags);
		return -EINVAL;
	}

	ret = FUNC8(dev, req->info.size, req->align,
			      req->info.domain, req->info.tile_mode,
			      req->info.tile_flags, &nvbo);
	if (ret)
		return ret;

	ret = FUNC1(file_priv, nvbo->gem, &req->info.handle);
	if (ret == 0) {
		ret = FUNC7(file_priv, nvbo->gem, &req->info);
		if (ret)
			FUNC2(file_priv, req->info.handle);
	}

	/* drop reference from allocate - handle holds it now */
	FUNC3(nvbo->gem);
	return ret;
}