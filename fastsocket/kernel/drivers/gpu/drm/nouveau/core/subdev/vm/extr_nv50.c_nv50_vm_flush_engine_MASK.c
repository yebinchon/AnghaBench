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
struct nv50_vmmgr_priv {int /*<<< orphan*/  lock; } ;
struct nouveau_subdev {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct nouveau_subdev*) ; 
 int /*<<< orphan*/  FUNC1 (struct nouveau_subdev*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct nouveau_subdev*,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct nouveau_subdev*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

void
FUNC6(struct nouveau_subdev *subdev, int engine)
{
	struct nv50_vmmgr_priv *priv = (void *)FUNC0(subdev);
	unsigned long flags;

	FUNC4(&priv->lock, flags);
	FUNC3(subdev, 0x100c80, (engine << 16) | 1);
	if (!FUNC2(subdev, 0x100c80, 0x00000001, 0x00000000))
		FUNC1(subdev, "vm flush timeout: engine %d\n", engine);
	FUNC5(&priv->lock, flags);
}