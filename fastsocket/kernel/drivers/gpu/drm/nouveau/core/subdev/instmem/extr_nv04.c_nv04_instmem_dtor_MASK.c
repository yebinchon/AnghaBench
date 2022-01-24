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
struct nv04_instmem_priv {int /*<<< orphan*/  base; scalar_t__ iomem; int /*<<< orphan*/  heap; int /*<<< orphan*/  vbios; int /*<<< orphan*/  ramht; int /*<<< orphan*/  ramro; int /*<<< orphan*/  ramfc; } ;
struct nouveau_object {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void
FUNC5(struct nouveau_object *object)
{
	struct nv04_instmem_priv *priv = (void *)object;
	FUNC1(NULL, &priv->ramfc);
	FUNC1(NULL, &priv->ramro);
	FUNC4(NULL, &priv->ramht);
	FUNC1(NULL, &priv->vbios);
	FUNC3(&priv->heap);
	if (priv->iomem)
		FUNC0(priv->iomem);
	FUNC2(&priv->base);
}