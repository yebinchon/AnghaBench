#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_4__ {int /*<<< orphan*/  vblank; } ;
struct TYPE_3__ {int nr; } ;
struct nv50_disp_priv {int super; TYPE_2__ base; TYPE_1__ head; int /*<<< orphan*/  supervisor; } ;
struct nouveau_subdev {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct nv50_disp_priv*,char*,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct nv50_disp_priv*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct nv50_disp_priv*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct nv50_disp_priv*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct nv50_disp_priv*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

void
FUNC8(struct nouveau_subdev *subdev)
{
	struct nv50_disp_priv *priv = (void *)subdev;
	u32 intr = FUNC5(priv, 0x610088);
	int i;

	if (intr & 0x00000001) {
		u32 stat = FUNC5(priv, 0x61008c);
		FUNC6(priv, 0x61008c, stat);
		intr &= ~0x00000001;
	}

	if (intr & 0x00000002) {
		u32 stat = FUNC5(priv, 0x61009c);
		int chid = FUNC0(stat) - 1;
		if (chid >= 0) {
			u32 mthd = FUNC5(priv, 0x6101f0 + (chid * 12));
			u32 data = FUNC5(priv, 0x6101f4 + (chid * 12));
			u32 unkn = FUNC5(priv, 0x6101f8 + (chid * 12));

			FUNC2(priv, "chid %d mthd 0x%04x data 0x%08x "
				       "0x%08x 0x%08x\n",
				 chid, (mthd & 0x0000ffc), data, mthd, unkn);
			FUNC6(priv, 0x61009c, (1 << chid));
			FUNC6(priv, 0x6101f0 + (chid * 12), 0x90000000);
		}

		intr &= ~0x00000002;
	}

	if (intr & 0x00100000) {
		u32 stat = FUNC5(priv, 0x6100ac);
		if (stat & 0x00000007) {
			priv->super = (stat & 0x00000007);
			FUNC7(&priv->supervisor);
			FUNC6(priv, 0x6100ac, priv->super);
			stat &= ~0x00000007;
		}

		if (stat) {
			FUNC3(priv, "unknown intr24 0x%08x\n", stat);
			FUNC6(priv, 0x6100ac, stat);
		}

		intr &= ~0x00100000;
	}

	for (i = 0; i < priv->head.nr; i++) {
		u32 mask = 0x01000000 << i;
		if (mask & intr) {
			u32 stat = FUNC5(priv, 0x6100bc + (i * 0x800));
			if (stat & 0x00000001)
				FUNC1(priv->base.vblank, i);
			FUNC4(priv, 0x6100bc + (i * 0x800), 0, 0);
			FUNC5(priv, 0x6100c0 + (i * 0x800));
		}
	}
}