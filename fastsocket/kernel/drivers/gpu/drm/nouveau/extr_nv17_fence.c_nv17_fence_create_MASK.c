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
struct TYPE_2__ {int /*<<< orphan*/  context_del; int /*<<< orphan*/  context_new; int /*<<< orphan*/  resume; int /*<<< orphan*/  (* dtor ) (struct nouveau_drm*) ;} ;
struct nv10_fence_priv {int /*<<< orphan*/  bo; int /*<<< orphan*/  lock; TYPE_1__ base; } ;
struct nouveau_drm {int /*<<< orphan*/  dev; struct nv10_fence_priv* fence; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  TTM_PL_FLAG_VRAM ; 
 struct nv10_fence_priv* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  nv10_fence_context_del ; 
 int /*<<< orphan*/  FUNC7 (struct nouveau_drm*) ; 
 int /*<<< orphan*/  nv17_fence_context_new ; 
 int /*<<< orphan*/  nv17_fence_resume ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

int
FUNC9(struct nouveau_drm *drm)
{
	struct nv10_fence_priv *priv;
	int ret = 0;

	priv = drm->fence = FUNC0(sizeof(*priv), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	priv->base.dtor = nv10_fence_destroy;
	priv->base.resume = nv17_fence_resume;
	priv->base.context_new = nv17_fence_context_new;
	priv->base.context_del = nv10_fence_context_del;
	FUNC8(&priv->lock);

	ret = FUNC2(drm->dev, 4096, 0x1000, TTM_PL_FLAG_VRAM,
			     0, 0x0000, NULL, &priv->bo);
	if (!ret) {
		ret = FUNC3(priv->bo, TTM_PL_FLAG_VRAM);
		if (!ret) {
			ret = FUNC1(priv->bo);
			if (ret)
				FUNC5(priv->bo);
		}
		if (ret)
			FUNC4(NULL, &priv->bo);
	}

	if (ret) {
		FUNC7(drm);
		return ret;
	}

	FUNC6(priv->bo, 0x000, 0x00000000);
	return ret;
}