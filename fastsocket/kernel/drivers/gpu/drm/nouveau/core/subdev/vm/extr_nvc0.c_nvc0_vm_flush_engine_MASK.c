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
typedef  int u64 ;
struct nvc0_vmmgr_priv {int /*<<< orphan*/  lock; } ;
struct nouveau_subdev {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct nouveau_subdev*) ; 
 int /*<<< orphan*/  FUNC1 (struct nouveau_subdev*,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct nouveau_subdev*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct nouveau_subdev*,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct nouveau_subdev*,int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct nouveau_subdev*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 

void
FUNC8(struct nouveau_subdev *subdev, u64 addr, int type)
{
	struct nvc0_vmmgr_priv *priv = (void *)FUNC0(subdev);
	unsigned long flags;

	/* looks like maybe a "free flush slots" counter, the
	 * faster you write to 0x100cbc to more it decreases
	 */
	FUNC6(&priv->lock, flags);
	if (!FUNC4(subdev, 0x100c80, 0x00ff0000, 0x00000000)) {
		FUNC1(subdev, "vm timeout 0: 0x%08x %d\n",
			 FUNC2(subdev, 0x100c80), type);
	}

	FUNC5(subdev, 0x100cb8, addr >> 8);
	FUNC5(subdev, 0x100cbc, 0x80000000 | type);

	/* wait for flush to be queued? */
	if (!FUNC3(subdev, 0x100c80, 0x00008000, 0x00008000)) {
		FUNC1(subdev, "vm timeout 1: 0x%08x %d\n",
			 FUNC2(subdev, 0x100c80), type);
	}
	FUNC7(&priv->lock, flags);
}