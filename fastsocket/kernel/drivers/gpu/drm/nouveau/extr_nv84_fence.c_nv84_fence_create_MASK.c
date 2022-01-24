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
struct TYPE_2__ {int uevent; int /*<<< orphan*/  waiting; int /*<<< orphan*/  context_del; int /*<<< orphan*/  context_new; int /*<<< orphan*/  resume; int /*<<< orphan*/  suspend; int /*<<< orphan*/  (* dtor ) (struct nouveau_drm*) ;} ;
struct nv84_fence_priv {int /*<<< orphan*/  bo_gart; int /*<<< orphan*/  bo; TYPE_1__ base; } ;
struct nouveau_fifo {int max; } ;
struct nouveau_drm {int /*<<< orphan*/  dev; struct nv84_fence_priv* fence; int /*<<< orphan*/  device; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  TTM_PL_FLAG_TT ; 
 int /*<<< orphan*/  TTM_PL_FLAG_VRAM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct nv84_fence_priv* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 struct nouveau_fifo* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nv84_fence_context_del ; 
 int /*<<< orphan*/  nv84_fence_context_new ; 
 int /*<<< orphan*/  FUNC8 (struct nouveau_drm*) ; 
 int /*<<< orphan*/  nv84_fence_resume ; 
 int /*<<< orphan*/  nv84_fence_suspend ; 

int
FUNC9(struct nouveau_drm *drm)
{
	struct nouveau_fifo *pfifo = FUNC7(drm->device);
	struct nv84_fence_priv *priv;
	int ret;

	priv = drm->fence = FUNC1(sizeof(*priv), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	priv->base.dtor = nv84_fence_destroy;
	priv->base.suspend = nv84_fence_suspend;
	priv->base.resume = nv84_fence_resume;
	priv->base.context_new = nv84_fence_context_new;
	priv->base.context_del = nv84_fence_context_del;

	FUNC0(&priv->base.waiting);
	priv->base.uevent = true;

	ret = FUNC3(drm->dev, 16 * (pfifo->max + 1), 0,
			     TTM_PL_FLAG_VRAM, 0, 0, NULL, &priv->bo);
	if (ret == 0) {
		ret = FUNC4(priv->bo, TTM_PL_FLAG_VRAM);
		if (ret == 0) {
			ret = FUNC2(priv->bo);
			if (ret)
				FUNC6(priv->bo);
		}
		if (ret)
			FUNC5(NULL, &priv->bo);
	}

	if (ret == 0)
		ret = FUNC3(drm->dev, 16 * (pfifo->max + 1), 0,
				     TTM_PL_FLAG_TT, 0, 0, NULL,
				     &priv->bo_gart);
	if (ret == 0) {
		ret = FUNC4(priv->bo_gart, TTM_PL_FLAG_TT);
		if (ret == 0) {
			ret = FUNC2(priv->bo_gart);
			if (ret)
				FUNC6(priv->bo_gart);
		}
		if (ret)
			FUNC5(NULL, &priv->bo_gart);
	}

	if (ret)
		FUNC8(drm);
	return ret;
}