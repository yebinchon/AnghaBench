#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct nv40_graph_priv {int /*<<< orphan*/  size; int /*<<< orphan*/  base; } ;
struct nouveau_object {int dummy; } ;
struct TYPE_4__ {int regions; } ;
struct nouveau_fb {TYPE_1__ tile; } ;
struct nouveau_engine {int /*<<< orphan*/  (* tile_prog ) (struct nouveau_engine*,int) ;} ;
struct TYPE_5__ {int chipset; int /*<<< orphan*/  pdev; } ;

/* Variables and functions */
 int NV03_PGRAPH_INTR ; 
 int NV04_PGRAPH_DEBUG_0 ; 
 int NV04_PGRAPH_DEBUG_1 ; 
 int NV04_PGRAPH_DEBUG_3 ; 
 int NV04_PGRAPH_LIMIT_VIOL_PIX ; 
 int NV10_PGRAPH_CTX_CONTROL ; 
 int NV10_PGRAPH_DEBUG_4 ; 
 int NV10_PGRAPH_STATE ; 
 int NV40_PGRAPH_CTXCTL_CUR ; 
 int NV40_PGRAPH_INTR_EN ; 
 struct nouveau_fb* FUNC0 (struct nouveau_object*) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC3 (struct nv40_graph_priv*) ; 
 struct nouveau_engine* FUNC4 (struct nouveau_object*) ; 
 int FUNC5 (struct nv40_graph_priv*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct nv40_graph_priv*,int,int) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct nouveau_engine*,int) ; 

__attribute__((used)) static int
FUNC9(struct nouveau_object *object)
{
	struct nouveau_engine *engine = FUNC4(object);
	struct nouveau_fb *pfb = FUNC0(object);
	struct nv40_graph_priv *priv = (void *)engine;
	int ret, i, j;
	u32 vramsz;

	ret = FUNC1(&priv->base);
	if (ret)
		return ret;

	/* generate and upload context program */
	ret = FUNC2(FUNC3(priv), &priv->size);
	if (ret)
		return ret;

	/* No context present currently */
	FUNC6(priv, NV40_PGRAPH_CTXCTL_CUR, 0x00000000);

	FUNC6(priv, NV03_PGRAPH_INTR   , 0xFFFFFFFF);
	FUNC6(priv, NV40_PGRAPH_INTR_EN, 0xFFFFFFFF);

	FUNC6(priv, NV04_PGRAPH_DEBUG_0, 0xFFFFFFFF);
	FUNC6(priv, NV04_PGRAPH_DEBUG_0, 0x00000000);
	FUNC6(priv, NV04_PGRAPH_DEBUG_1, 0x401287c0);
	FUNC6(priv, NV04_PGRAPH_DEBUG_3, 0xe0de8055);
	FUNC6(priv, NV10_PGRAPH_DEBUG_4, 0x00008000);
	FUNC6(priv, NV04_PGRAPH_LIMIT_VIOL_PIX, 0x00be3c5f);

	FUNC6(priv, NV10_PGRAPH_CTX_CONTROL, 0x10010100);
	FUNC6(priv, NV10_PGRAPH_STATE      , 0xFFFFFFFF);

	j = FUNC5(priv, 0x1540) & 0xff;
	if (j) {
		for (i = 0; !(j & 1); j >>= 1, i++)
			;
		FUNC6(priv, 0x405000, i);
	}

	if (FUNC3(priv)->chipset == 0x40) {
		FUNC6(priv, 0x4009b0, 0x83280fff);
		FUNC6(priv, 0x4009b4, 0x000000a0);
	} else {
		FUNC6(priv, 0x400820, 0x83280eff);
		FUNC6(priv, 0x400824, 0x000000a0);
	}

	switch (FUNC3(priv)->chipset) {
	case 0x40:
	case 0x45:
		FUNC6(priv, 0x4009b8, 0x0078e366);
		FUNC6(priv, 0x4009bc, 0x0000014c);
		break;
	case 0x41:
	case 0x42: /* pciid also 0x00Cx */
	/* case 0x0120: XXX (pciid) */
		FUNC6(priv, 0x400828, 0x007596ff);
		FUNC6(priv, 0x40082c, 0x00000108);
		break;
	case 0x43:
		FUNC6(priv, 0x400828, 0x0072cb77);
		FUNC6(priv, 0x40082c, 0x00000108);
		break;
	case 0x44:
	case 0x46: /* G72 */
	case 0x4a:
	case 0x4c: /* G7x-based C51 */
	case 0x4e:
		FUNC6(priv, 0x400860, 0);
		FUNC6(priv, 0x400864, 0);
		break;
	case 0x47: /* G70 */
	case 0x49: /* G71 */
	case 0x4b: /* G73 */
		FUNC6(priv, 0x400828, 0x07830610);
		FUNC6(priv, 0x40082c, 0x0000016A);
		break;
	default:
		break;
	}

	FUNC6(priv, 0x400b38, 0x2ffff800);
	FUNC6(priv, 0x400b3c, 0x00006000);

	/* Tiling related stuff. */
	switch (FUNC3(priv)->chipset) {
	case 0x44:
	case 0x4a:
		FUNC6(priv, 0x400bc4, 0x1003d888);
		FUNC6(priv, 0x400bbc, 0xb7a7b500);
		break;
	case 0x46:
		FUNC6(priv, 0x400bc4, 0x0000e024);
		FUNC6(priv, 0x400bbc, 0xb7a7b520);
		break;
	case 0x4c:
	case 0x4e:
	case 0x67:
		FUNC6(priv, 0x400bc4, 0x1003d888);
		FUNC6(priv, 0x400bbc, 0xb7a7b540);
		break;
	default:
		break;
	}

	/* Turn all the tiling regions off. */
	for (i = 0; i < pfb->tile.regions; i++)
		engine->tile_prog(engine, i);

	/* begin RAM config */
	vramsz = FUNC7(FUNC3(priv)->pdev, 0) - 1;
	switch (FUNC3(priv)->chipset) {
	case 0x40:
		FUNC6(priv, 0x4009A4, FUNC5(priv, 0x100200));
		FUNC6(priv, 0x4009A8, FUNC5(priv, 0x100204));
		FUNC6(priv, 0x4069A4, FUNC5(priv, 0x100200));
		FUNC6(priv, 0x4069A8, FUNC5(priv, 0x100204));
		FUNC6(priv, 0x400820, 0);
		FUNC6(priv, 0x400824, 0);
		FUNC6(priv, 0x400864, vramsz);
		FUNC6(priv, 0x400868, vramsz);
		break;
	default:
		switch (FUNC3(priv)->chipset) {
		case 0x41:
		case 0x42:
		case 0x43:
		case 0x45:
		case 0x4e:
		case 0x44:
		case 0x4a:
			FUNC6(priv, 0x4009F0, FUNC5(priv, 0x100200));
			FUNC6(priv, 0x4009F4, FUNC5(priv, 0x100204));
			break;
		default:
			FUNC6(priv, 0x400DF0, FUNC5(priv, 0x100200));
			FUNC6(priv, 0x400DF4, FUNC5(priv, 0x100204));
			break;
		}
		FUNC6(priv, 0x4069F0, FUNC5(priv, 0x100200));
		FUNC6(priv, 0x4069F4, FUNC5(priv, 0x100204));
		FUNC6(priv, 0x400840, 0);
		FUNC6(priv, 0x400844, 0);
		FUNC6(priv, 0x4008A0, vramsz);
		FUNC6(priv, 0x4008A4, vramsz);
		break;
	}

	return 0;
}