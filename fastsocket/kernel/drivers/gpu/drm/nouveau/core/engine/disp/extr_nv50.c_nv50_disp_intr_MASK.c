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
typedef  int u32 ;
struct TYPE_2__ {int /*<<< orphan*/  vblank; } ;
struct nv50_disp_priv {int super; int /*<<< orphan*/  supervisor; TYPE_1__ base; } ;
struct nouveau_subdev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct nv50_disp_priv*) ; 
 int FUNC2 (struct nv50_disp_priv*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct nv50_disp_priv*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void
FUNC5(struct nouveau_subdev *subdev)
{
	struct nv50_disp_priv *priv = (void *)subdev;
	u32 intr0 = FUNC2(priv, 0x610020);
	u32 intr1 = FUNC2(priv, 0x610024);

	if (intr0 & 0x001f0000) {
		FUNC1(priv);
		intr0 &= ~0x001f0000;
	}

	if (intr1 & 0x00000004) {
		FUNC0(priv->base.vblank, 0);
		FUNC3(priv, 0x610024, 0x00000004);
		intr1 &= ~0x00000004;
	}

	if (intr1 & 0x00000008) {
		FUNC0(priv->base.vblank, 1);
		FUNC3(priv, 0x610024, 0x00000008);
		intr1 &= ~0x00000008;
	}

	if (intr1 & 0x00000070) {
		priv->super = (intr1 & 0x00000070);
		FUNC4(&priv->supervisor);
		FUNC3(priv, 0x610024, priv->super);
		intr1 &= ~0x00000070;
	}
}