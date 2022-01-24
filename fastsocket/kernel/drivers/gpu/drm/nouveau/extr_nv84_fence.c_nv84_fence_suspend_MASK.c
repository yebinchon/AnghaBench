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
typedef  int /*<<< orphan*/  u32 ;
struct nv84_fence_priv {int /*<<< orphan*/ * suspend; int /*<<< orphan*/  bo; } ;
struct nouveau_fifo {int max; } ;
struct nouveau_drm {struct nv84_fence_priv* fence; int /*<<< orphan*/  device; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 struct nouveau_fifo* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int) ; 

__attribute__((used)) static bool
FUNC3(struct nouveau_drm *drm)
{
	struct nouveau_fifo *pfifo = FUNC1(drm->device);
	struct nv84_fence_priv *priv = drm->fence;
	int i;

	priv->suspend = FUNC2((pfifo->max + 1) * sizeof(u32));
	if (priv->suspend) {
		for (i = 0; i <= pfifo->max; i++)
			priv->suspend[i] = FUNC0(priv->bo, i*4);
	}

	return priv->suspend != NULL;
}