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
struct nv04_disp_priv {TYPE_1__ base; } ;
struct nouveau_subdev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct nv04_disp_priv*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct nv04_disp_priv*,int,int) ; 

__attribute__((used)) static void
FUNC3(struct nouveau_subdev *subdev)
{
	struct nv04_disp_priv *priv = (void *)subdev;
	u32 crtc0 = FUNC1(priv, 0x600100);
	u32 crtc1 = FUNC1(priv, 0x602100);

	if (crtc0 & 0x00000001) {
		FUNC0(priv->base.vblank, 0);
		FUNC2(priv, 0x600100, 0x00000001);
	}

	if (crtc1 & 0x00000001) {
		FUNC0(priv->base.vblank, 1);
		FUNC2(priv, 0x602100, 0x00000001);
	}
}